time.h is here with the only difference being //static __inline time_t     time(time_t *timer) { return __time64(timer); }
being commented out. The issue is that if you enable time64 then the time function is defined in time.h so if the seconds module tries to define time in rtosConfig_pem4.c then it breaks.