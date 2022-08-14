//#include <GDBStub.h>
#include "utils.hpp"
#include "timeManager.hpp"
#include <ESP_EEPROM.h>

#include "webServer.hpp"
#include "defs.hpp"
#include "BufferedSerial.hpp"
#include <time.h>
//#define SETEEPROM


void setup()
{
    BufferedSerial::setup();

    uint8_t val;
    EEPROM.get(0,val);
    if(val==0){
        BufferedSerial::println("Unknown Reset Cause");
    }else if(val==1){
        BufferedSerial::println("Reset Due to Ping Failed");
    }
    EEPROM.put(0,0);
    EEPROM.commit();
    //gdbstub_init();

    pinMode(LED_BUILTIN, OUTPUT);
    digitalWrite(LED_BUILTIN, LOW);
    digitalWrite(LED_BUILTIN, HIGH);

    WiFi.begin(AUTH_WIFI_SSID,AUTH_WIFI_PWD);
    uint8_t i = 0;
    
    while (WiFi.status() != WL_CONNECTED && ++i < 20)
    {
        delay(500);
        IFDEBUG(Serial.print("."));
    }

    if (WiFi.status() != WL_CONNECTED)
    {
        Utils::wifiPresent = false;
        IFDEBUG(BufferedSerial::println("No WiFi"));
    }
    else{
        
        IFDEBUG(BufferedSerial::println("WiFi Connected"));
    }
        
    TimeManager::setup();
    // while(!TimeManager::isReady()){
    //     delay(500);
    //     IFDEBUG(Serial.print("*"));
    // }
    // time_t time=TimeManager::getTime();
    // Serial.print(asctime(localtime(&time)));
    WebServer::setup();
    EmailSender::setup();
    
    //TODO: read SMbus to get TM4C status
    //EmailSender::sendEmail("Ceiling light started - On Mode Hours: ", false);


    Serial.println("Full Buffer");
    Serial.println(BufferedSerial::buffer);
}

void loop()
{
    EmailSender::runSpooler(Utils::doUpdates);
}
