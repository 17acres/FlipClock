# Overview
The System Management Bus (SMBus) Specification Version 3.1 is implemented on this project. http://smbus.org/specs/

The TM4C is the master on the bus and runs most things, but if a command is sent over WiFi, the ESP pulls the `SMBALERT#` pin low. 

The ESP8266 is address `ESP_SMBus_ADDR`. PEC is used.

## Pin Matrix
| Name | TM4C Pin | ESP Pin|
|--|--|--|
|SDA|PA7|D1|
|SCL|PA6|D2|
|SMBALERT#|PA5|D5|
|ESP_RST|PC5|RST|

All pins are open-drain on the ESP side.


# Supported Protocols
See [smbusIM.h](smbusIM.h)
## ARA
See SMBus spec Appendix A.2

# Remote Command Process

In the event of a transaction initiated by the ESP,
1. ESP pulls `SMBALERT#` low
2. TM4C sends ARA packet and ESP releases `SMBALERT#`
3. ESP responds with `ESP_SMBus_ADDR`
4. TM4C sends Read Byte with Command Code `CC_REMOTE_COMMAND_REQUEST`
5. ESP responds with the requested command code
6. **If more data transfer is required**, TM4C sends either a Block Read or a Block Write with the requested command code
7. Once action is complete, ESP sends Write Byte with command code `CC_REMOTE_COMMAND_RESULT` with the appropriate status code



When this happens, the ARA is requested as normal then the TM4C will initiate a Read Byte operation with command code `CC_REMOTE_COMMAND_REQUEST` and the ESP will send back the command code for the remote's request. Based on the command, the TM4C will request the rest of the data for the request. Once the requested operation is complete, the TM4C will send a Write Byte operation with the same command code as the user's request.

1. ESP8266


# Supported Command Codes
See [smbusIM.h](smbusIM.h)