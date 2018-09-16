//L32 ICE
//

#include <SoftwareSerial.h>

SoftwareSerial mySerial(10,11);

void setup(){
  //open serial communications and set data rate:
  Serial.begin(57600);
  //set data rate for serial ports
  mySerial.begin(4800);
}

void loop(){
  if(mySerial.available())
    Serial.write(mySerial.read());
  if(Serial.available())
    mySerial.write(Serial.read());  
}
