#include "emailSender.hpp"
#include "defs.hpp"
#include "auth.hpp"
#include "webServer.hpp"
#include "BufferedSerial.hpp"
#if DIRECT_EMAIL
#include "ESP8266SMTP.hpp"
#endif
#include "timeManager.hpp"
std::queue<EmailSender::EmailContents> EmailSender::emailQueue;
void EmailSender::setup()
{
#if DIRECT_EMAIL
    SMTP.setEmail(AUTH_EMAIL).setPassword(AUTH_PWD).setFrom("Mr. Philip Clock").setForGmail();
#endif
}
void EmailSender::sendEmail(String subject, String body, bool isLog)
{
    subject.replace("\n","");
    body.replace("\n","<br>");
    emailQueue.push((EmailContents){subject, body, TimeManager::getTime(), isLog});
}
void EmailSender::sendEmail(String subject, bool isLog)
{
    sendEmail(subject, "Dan couldn't be bothered to write a body. With warm regards, Mr. Philip Clock", isLog);
}

void EmailSender::sendDebugEmail(String subject, String body, bool isLog)
{
    if (DEBUG_EMAILS)
        sendEmail(subject, body, isLog);
}
void EmailSender::sendDebugEmail(String subject, bool isLog)
{
    if (DEBUG_EMAILS)
        sendEmail(subject, "Dan couldn't be bothered to write a body. This is a tedious debug email that should be disabled eventually. With warm regards, Mr. Philip Clock", isLog);
}

void EmailSender::runSpooler(std::function<void(void)> whileWaiting)
{
    whileWaiting();
#if DIRECT_EMAIL
        sendActualSMTP(whileWaiting);
#else
        sendActualMQTT();
#endif
}

#if DIRECT_EMAIL
void EmailSender::sendActualSMTP(std::function<void(void)> whileWaiting)
{
    EmailContents thisEmail = emailQueue.front();
    emailQueue.pop();
    SMTP.Subject(thisEmail.subject.c_str());
    time_t messageTime = thisEmail.sendTime;
    String timeString = asctime(localtime(&messageTime));
    if (!TimeManager::isValid(&messageTime))
    {
        messageTime = TimeManager::getTime();
        timeString = asctime(localtime(&messageTime));
        timeString += " **TIME WAS ZERO, REPLACED WITH SEND TIME**";
    }
    if (SMTP.Send(AUTH_EMAIL_DEST, thisEmail.body + "<br>Sent at: " + timeString+"<br><br> SERIAL LOG BUFFER:<br>"+String(BufferedSerial::buffer), whileWaiting))
        IFDEBUG(BufferedSerial::println("Email message sent"));
    else
    {
        IFDEBUG(BufferedSerial::print("Email sending Error "));
        IFDEBUG(BufferedSerial::println(SMTP.getError()));
    }
}
#else

void EmailSender::sendActualMQTT()
{
    EmailContents thisEmail = emailQueue.front();
    emailQueue.pop();

    time_t messageTime = thisEmail.sendTime;
    String timeString = asctime(localtime(&messageTime));
    timeString.trim();
    if (!TimeManager::isValid(&messageTime))
    {
        messageTime = TimeManager::getTime();
        timeString = asctime(localtime(&messageTime)); //asctime ends with /n
        timeString.trim();
        timeString += "<br> **TIME WAS ZERO, REPLACED WITH SEND TIME**";
    }
    

    String emailStr = "<br>Subject: " + thisEmail.subject + "<br><br>Body:<br>" + thisEmail.body + "<br>Sent at: " + timeString;

    if (!thisEmail.isLog)
    {
        String mqttMsg = "{\"channel\":\"ceilinglight\",\"resource\":\"report\", \"data\":\"" + emailStr + "\", \"ispublic\": true, \"ts\":"+String((unsigned long)messageTime)+"000}";
        WebServer::mqttClient.publish("ceilinglight/report", mqttMsg.c_str());
    }
    String mqttMsg = "{\"channel\":\"ceilinglight\",\"resource\":\"log\",\"data\":\"" + emailStr + "\", \"write\": true, \"ispublic\": true, \"ts\":"+String((unsigned long)messageTime)+"000}";
    IFDEBUG(BufferedSerial.println(mqttMsg));

    int rc=WebServer::mqttClient.publish("ceilinglight/log", mqttMsg.c_str());
    IFDEBUG(BufferedSerial.println(rc));
}
#endif
