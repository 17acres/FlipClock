//#include <GDBStub.h>
#include "hvLeds.hpp"
#include "addrLeds.hpp"
#include "utils.hpp"
#include "animationManager.hpp"
#include "timeManager.hpp"
#include "lightSwitch.hpp"
#include <ESP_EEPROM.h>
#include "webServer.hpp"
#include "defs.hpp"
#include <time.h>
//#define SETEEPROM


HvLeds *hvLeds;
AddrLeds *addrLeds;
Animations::AnimationManager *animMan;

void setup()
{
    EEPROM.begin(5);
#ifdef SETEEPROM
#pragma message "WRITING EEPROM"
    EEPROM.put(0,(unsigned int)2533914);
    EEPROM.put(4, 0);
    EEPROM.commit();
#endif

    Serial.begin(115200);//Do this before RX pin is repurposed for dma LEDs (i2s)
    hvLeds = HvLeds::getInstance();
    addrLeds = AddrLeds::getInstance();
    animMan = Animations::AnimationManager::getInstance();

    //gdbstub_init();



    unsigned int numSeconds;
    EEPROM.get(0, numSeconds);
    IFDEBUG(Serial.print("On Mode Second Count "));
    IFDEBUG(Serial.println(numSeconds));

    pinMode(LED_BUILTIN, OUTPUT);
    digitalWrite(LED_BUILTIN, LOW);
    digitalWrite(LED_BUILTIN, HIGH);

    Wifi.begin(AUTH_WIFI_SSID,AUTH_WIFI_PWD);
    uint8_t i = 0;
    
    while (WiFi.status() != WL_CONNECTED && ++i < 20)
    {
        delay(500);
        IFDEBUG(Serial.print("."));
    }

    if (WiFi.status() != WL_CONNECTED)
    {
        Utils::wifiPresent = false;
        IFDEBUG(Serial.println("No WiFi"));
    }
    else{
        
        IFDEBUG(Serial.println("WiFi Connected"));
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
    EmailSender::sendEmail("Ceiling light started - On Mode Hours: " + String(((double)numSeconds) / (60.0 * 60.0)), false);
}

void loop()
{
    EmailSender::runSpooler(Utils::doUpdates);
}