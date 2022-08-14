#ifndef BUFFERED_SERIAL_H_
#define BUFFERED_SERIAL_H_
class BufferedSerial
{
private:
    static String getPrefix();
    static void printMqtt(String message);
public:
    static void setup();
    static void print(const char *arg);
    static void print(const char *arg, String suffix);
    static void println(const char *arg);
    static char buffer[];
};


#endif