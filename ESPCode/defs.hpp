#ifndef defs
#define defs

#define DEBUG_EMAILS false

#define DIRECT_EMAIL true //false means use MQTT beebotte beerule to send email instead 

#define DEBUG_SERIAL

#ifdef DEBUG_SERIAL
#define IFDEBUG(a) do{a;}while(0)
#else
#define IFDEBUG(a) do{}while(0)
#endif

#endif