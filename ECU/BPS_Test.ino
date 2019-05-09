#include "BPS.h"

FlexCAN Can1(500000, 0);
static CAN_message_t msg;

BPS bps;

//void setup() {
//  Serial.println("Still Initializing BPS CAN!");
//  Can1.begin();
//  Serial.begin(9600);
//  Serial.println("Initialized BPS CAN!");
//}

//void loop() {
//  //Serial.println("loop");
//  
//  //bps.print();
//  if (Can1.available())
//  {
//    Can1.read(msg);
//    //Serial.println(msg.id);
//    //for(int i=0;i<8;i++)
//    //  Serial.println(msg.buf[i], HEX);
//    //Serial.println();
//    bps.parse(msg);
//    bps.print();
//    Serial.println("----------------------------------------");
//  }
//  else
//  {
//    // do nothing
//  }
//}
