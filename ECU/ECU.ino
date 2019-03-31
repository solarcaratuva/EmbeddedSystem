#include <FlexCAN.h>
#include <kinetis_flexcan.h>
#include <cstdlib>
#include <string>
#include "pindef.h"
#include "BMS.h"
#include "KLS.h"
#include "UI.h"
#include "lights.h"


void setup() {
  analogWriteResolution(14); // set analog resolution for all functions
  // set output PWM frequency for motor controller
  analogWriteFrequency(PIN_MOTOR_R_THROTTLE, 32000);
  analogWriteFrequency(PIN_MOTOR_R_REGEN,    32000);
  analogWriteFrequency(PIN_MOTOR_L_THROTTLE, 32000);
  analogWriteFrequency(PIN_MOTOR_L_REGEN,    32000);
  
  // initialize GPIO for motor controller
  pinMode(PIN_MOTOR_L_REGEN_EN, OUTPUT);
  pinMode(PIN_MOTOR_L_REGEN,    OUTPUT);
  pinMode(PIN_MOTOR_L_THROTTLE, OUTPUT);
  pinMode(PIN_MOTOR_L_ECO_EN,   OUTPUT);
  pinMode(PIN_MOTOR_L_METER,    INPUT);
  pinMode(PIN_MOTOR_L_FWD_EN,   OUTPUT);
  pinMode(PIN_MOTOR_L_REV_EN,   OUTPUT);
  
  pinMode(PIN_MOTOR_R_REGEN_EN, OUTPUT);
  pinMode(PIN_MOTOR_R_REGEN,    OUTPUT);
  pinMode(PIN_MOTOR_R_THROTTLE, OUTPUT);
  pinMode(PIN_MOTOR_R_ECO_EN,   OUTPUT);
  pinMode(PIN_MOTOR_R_METER,    INPUT);
  pinMode(PIN_MOTOR_R_FWD_EN,   OUTPUT);
  pinMode(PIN_MOTOR_R_REV_EN,   OUTPUT);

  digitalWrite(PIN_MOTOR_L_REGEN_EN, HIGH);
  analogWrite(PIN_MOTOR_L_REGEN,     0);
  analogWrite(PIN_MOTOR_L_THROTTLE,  0);
  digitalWrite(PIN_MOTOR_L_ECO_EN,   LOW);
  // ??? = analogRead(PIN_MOTOR_L_METER);
  pinMode(PIN_MOTOR_L_FWD_EN,        HIGH);
  pinMode(PIN_MOTOR_L_REV_EN,        LOW);
  
  digitalWrite(PIN_MOTOR_R_REGEN_EN, HIGH);
  analogWrite(PIN_MOTOR_R_REGEN,     0);
  analogWrite(PIN_MOTOR_R_THROTTLE,  0);
  digitalWrite(PIN_MOTOR_R_ECO_EN,   LOW);
  // ??? = analogRead(PIN_MOTOR_R_METER);
  digitalWrite(PIN_MOTOR_R_FWD_EN,   HIGH);
  digitalWrite(PIN_MOTOR_R_REV_EN,   LOW);
}

void loop() {

  // code here to test motor controller
}
