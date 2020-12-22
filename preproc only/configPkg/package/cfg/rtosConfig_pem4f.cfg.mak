# invoke SourceDir generated makefile for rtosConfig.pem4f
rtosConfig.pem4f: .libraries,rtosConfig.pem4f
.libraries,rtosConfig.pem4f: package/cfg/rtosConfig_pem4f.xdl
	$(MAKE) -f C:\Users\Dan\Documents\GitHub\FlipClock/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Dan\Documents\GitHub\FlipClock/src/makefile.libs clean

