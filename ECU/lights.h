#include "pindef.h"
enum state_t { null = 0, left_turn, right_turn, hazards };
state_t state = null;
const int left_blinker_pin = PIN_LEFT_BLINKERS;
const int right_blinker_pin = PIN_RIGHT_BLINKERS;
const int turn_sig_pin = PIN_TURNSIG_CTRL;
const int horn_pin = PIN_HORN;
const int headlights_pin = PIN_HEADLIGHTS;
const int brakelights_pin = PIN_BRAKELIGHTS;
const int hazards_ctrl = PIN_HAZARD_CTRL;
uint32_t interval = 500;

void setup() {
    pinMode(left_blinker_pin, OUTPUT);
    pinMode(right_blinker_pin, OUTPUT);
    pinMode(horn_pin, OUTPUT);
    pinMode(headlights_pin, OUTPUT);
    pinMode(brakelights_pin, OUTPUT);
    pinMode(turn_sig_pin, INPUT);
    Serial.begin(9600);
}
byte c = 0;
byte d = 0;
int turn_sig_state = LOW;
int hazard_sig_state = LOW;
void loop() {
    turn_sig_state = analogRead(turn_sig_pin);
    hazard_state = digitalRead(hazards_ctrl);
    turn_signal();
    {
        c = turn_sig_state;
        switch (c) {
            case (0 - 100):
                state = left_turn;
                break;
            case (900 - 1000):
                state = right_turn;
                break;
            case (101 - 899):
                state = hazards;
                break;
            default:
                state = null;
                break;
        }
    }
    hazards()
    {
        d = hazard_state;
        switch (c) {
            case (HIGH):
                state = hazards;
                break;
            default:
                state = null;
                break;
    }
}

int turn_signal() {
    static uint32_t previousMillis = 0;
    uint32_t currentMillis = millis();
    static bool flash = false;
    if ((currentMillis - previousMillis) >= interval) {
        flash = !flash;
        previousMillis = millis();
    }
    switch (state) {
        case (null):
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            currentMillis = 0;
            previousMillis = 0;
            flash = false;
            break;
        case (left_turn):
            digitalWrite(left_blinker_pin, flash);
            digitalWrite(right_blinker_pin, LOW);
            break;
        case (right_turn):
            digitalWrite(right_blinker_pin, flash);
            digitalWrite(left_blinker_pin, LOW);
            break;
        case (hazards):
            digitalWrite(right_blinker_pin, flash);
            digitalWrite(left_blinker_pin, flash);
            break;
        default:
            digitalWrite(right_blinker_pin, LOW);
            digitalWrite(left_blinker_pin, LOW);
    }
    return 0;
}
int hazards() {
  static uint32_t previousMillis = 0;
  uint32_t currentMillis = millis();
  static bool flash = false;
  if ((currentMillis - previousMillis) >= interval) {
      flash = !flash;
      previousMillis = millis();
  }
  switch (state) {
      case (null):
          digitalWrite(left_blinker_pin, LOW);
          digitalWrite(right_blinker_pin, LOW);
          digitalWrite(brake_lights_pin, LOW);
          currentMillis = 0;
          previousMillis = 0;
          flash = false;
          break;
      case (hazards):
          digitalWrite(left_blinker_pin, flash);
          digitalWrite(right_blinker_pin, flash);
          digitalWrite(brake_lights_pin, flash);
      default:
          digitalWrite(left_blinker_pin, LOW);
          digitalWrite(right_blinker_pin, LOW);
          digitalWrite(brake_lights_pin, LOW);
    }
    return 0;
}
//int head_lights() {
//  
//}
