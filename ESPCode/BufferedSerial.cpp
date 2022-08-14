#include "BufferedSerial.hpp"
#include "timeManager.hpp"
#include "webServer.hpp"

char BufferedSerial::buffer[8192];
void BufferedSerial::setup(){
    Serial.begin(115200);
}

String BufferedSerial::getPrefix(){
    
    time_t now=TimeManager::getTime();
    return "|Time "+String(asctime(localtime(&now)))+" : "+String(millis()).c_str()+"ms >> ";
}

void BufferedSerial::print(const char*arg){
    print(arg,"");
}

void BufferedSerial::print(const char *arg,String suffix){
    if(strlen(arg)>1000){
        return;
    }
    String thisLine=getPrefix()+String(arg)+suffix;
    printMqtt(thisLine);
    if((thisLine.length()+strlen(buffer))>8190){
        memcpy(buffer,&buffer[4096],4096);
    }
    strcat(buffer,thisLine.c_str());
    Serial.print(thisLine);
}
void BufferedSerial::println(const char *arg){
    if(strlen(arg)>1000){
        return;
    }
    print(arg,"\n");
}

void BufferedSerial::printMqtt(String message){
    String mqttMsg = "{\"channel\":\"flipclock\",\"resource\":\"log\", \"data\":\"" + message + "\", \"ispublic\": true, \"ts\":"+String(TimeManager::getTime())+"000}";
    WebServer::mqttClient.publish("ceilinglight/log", mqttMsg.c_str());
}