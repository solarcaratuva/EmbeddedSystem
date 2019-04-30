#include "pindef.h"
// TURN SIGNAL ENUMERATED TYPE
enum turn_state_t { turn_off, left_turn, right_turn };
turn_state_t turn_state = turn_off;

// HAZARDS ENUMERATED TYPE
enum hazards_state_t { hazards_off, hazards_on };
hazards_state_t hazards_state = hazards_off;

// HEADLIGHTS ENUMERATED TYPE
enum headlights_state_t { headlights_off, headlights_on };
headlights_state_t headlights_state = headlights_off; 

// HORN ENUMERATED TYPE
enum horn_state_t { horn_off, horn_on };
horn_state_t horn_state = horn_off;

// PINS 
const int left_blinker_pin = PIN_LEFT_BLINKERS;
const int right_blinker_pin = PIN_RIGHT_BLINKERS;
const int turn_sig_pin = PIN_TURNSIG_CTRL;
const int horn_pin = PIN_HORN;
const int headlights_pin = PIN_HEADLIGHTS;
const int brakelights_pin = PIN_BRAKELIGHTS;
const int hazards_ctrl = PIN_HAZARD_CTRL;
const int horn_ctrl = PIN_HORN_CTRL;
const int headlight_ctrl = PIN_HEADLIGHT_CTRL;

uint32_t interval = 500;  // interval for blinking the lights

void setup() {
    pinMode(left_blinker_pin, OUTPUT);
    pinMode(right_blinker_pin, OUTPUT);
    pinMode(horn_pin, OUTPUT);
    pinMode(headlights_pin, OUTPUT);
    pinMode(brakelights_pin, OUTPUT);
    pinMode(turn_sig_pin, INPUT);
    pinMode(hazards_ctrl, INPUT);
    pinMode(horn_ctrl, INPUT);
    pinMode(headlight_ctrl, INPUT);
    Serial.begin(9600);
}
byte c = 0;  
byte d = 0;
byte e = 0;
byte f = 0;
 
int turn_sig_state = LOW;
int hazard_button_state = LOW;
int horn_button_state = LOW;
int headlight_button_state = LOW;

int turn_signal() {
    static uint32_t previousMillis = 0;
    uint32_t currentMillis = millis();
    static bool flash = false;
    if ((currentMillis - previousMillis) >= interval) {
        flash = !flash;
        previousMillis = millis();
    }
    switch (turn_state) {
        case (turn_off):
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
  switch (hazards_state) {
      case (hazards_off):
          digitalWrite(left_blinker_pin, LOW);
          digitalWrite(right_blinker_pin, LOW);
          digitalWrite(brakelights_pin, LOW);
          currentMillis = 0;
          previousMillis = 0;
          flash = false;
          break;
      case (hazards_on):
          digitalWrite(left_blinker_pin, flash);
          digitalWrite(right_blinker_pin, flash);
          digitalWrite(brakelights_pin, flash);
          break;
      default:
          digitalWrite(left_blinker_pin, LOW);
          digitalWrite(right_blinker_pin, LOW);
          digitalWrite(brakelights_pin, LOW);
    }
    return 0;
}
int head_lights() {
    switch (headlights_state) {
        case(headlights_off):
            digitalWrite(headlights_pin, LOW);
            break;
        case(headlights_on):
            digitalWrite(headlights_pin, HIGH);
            break;
        default:
            digitalWrite(headlights_pin, LOW);
    }
}
int horn() {
    switch (horn_state) {
        case(horn_off):
            digitalWrite(horn_pin, LOW);
            break;
        case(horn_on):
            digitalWrite(horn_pin, HIGH);
            break;
        default:
            digitalWrite(horn_pin, LOW);
    }
}

void loop() {
    turn_sig_state = analogRead(turn_sig_pin);
    hazard_button_state = digitalRead(hazards_ctrl);
    horn_button_state = digitalRead(horn_ctrl);
    headlight_button_state = digitalRead(headlight_ctrl);
    turn_signal();
    {
        c = turn_sig_state;
        switch (c) {
            case (0 - 100):
                turn_state = left_turn;
                break;
            case (900 - 1000):
                turn_state = right_turn;
                break;
            default:
                turn_state = turn_off;
                break;
        }
    }
    hazards();
    {
        d = hazards_state;
        switch (d) {
            case (HIGH):
                hazards_state = hazards_on;
                break;
            default:
                hazards_state = hazards_off;
                break;
        }
    }
    head_lights(); {
        e = headlights_state;
        switch (e) {
            case(HIGH):
                headlights_state = headlights_on;
                break;
            default:
                headlights_state = headlights_off;
                break;
                
        }
    }
    horn(); {
        f = horn_state;
        switch (f) {
            case(HIGH):
                horn_state = horn_on;
                break;
            default:
                horn_state = horn_off;
                break;
        }
    }
}
