#include "utils.hpp"
#include "hvLeds.hpp"
#include "animationManager.hpp"
#include "addrLeds.hpp"
#include "lightSwitch.hpp"
#include "webServer.hpp"

double Utils::temperature = 72;
bool Utils::wifiPresent=true;
void Utils::updateTemp()
{
    static double intTemp;
    static const double alpha = .005;

    double raw = analogRead(TEMP_PIN);
    intTemp = raw * -.11818 + 182.6364;
    temperature = alpha * intTemp + (1 - alpha) * temperature;
    if(raw>1020||raw<10)//Sensor problem
        temperature=123456789;
}

void Utils::doUpdates()
{
    static unsigned long lastRunTime = 0;
    static uint8_t count = 0;
    if ((millis() - lastRunTime) > 1000/FRAMERATE)
    {
        lastRunTime = millis();
        LightSwitch::getInstance()->update();
        WebServer::update();
        updateTemp();
        Animations::AnimationManager::getInstance()->update();
        if (Animations::AnimationManager::getInstance()->getCurrentAnimation() == Animations::Off::getInstance())
        { //Update every 100ms while off
            if (++count == 10)
            {
                count = 0;
                yield();
                HvLeds::getInstance()->update();
                yield();
                AddrLeds::getInstance()->update();
            }
        }
        else
        {
            count = 9; //Update leds immediately if animation just changed to off
            yield();
            HvLeds::getInstance()->update();
            yield();
            AddrLeds::getInstance()->update();
        }
    }
}

void Utils::delayUpdate(unsigned long mills)
{
    unsigned long targetTime = millis() + mills;
    while (millis() < targetTime)
    {
        yield();
        doUpdates();
    }
}

void Utils::delayUntilFinished()
{
    while (!Animations::AnimationManager::getInstance()->isFinished())
    {
        doUpdates();
        yield();
    }
}
