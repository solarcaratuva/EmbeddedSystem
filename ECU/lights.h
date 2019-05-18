#ifndef __LIGHTS_H__
#define __LIGHTS_H__

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
uint32_t blink_interval = 500;  // interval for blinking the lights

byte c = 0;
byte d = 0;
byte e = 0;
byte f = 0;

uint16_t turn_sig_state = LOW;
bool hazard_button_state = LOW;
bool horn_button_state = LOW;
bool headlight_button_state = LOW;

char turn_signal() {
    static uint32_t previousMillis = 0;
    uint32_t currentMillis = millis();
    static bool flash = false;
    if ((currentMillis - previousMillis) >= blink_interval) {
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
            return 'O';
        case (left_turn):
            digitalWrite(left_blinker_pin, flash);
            digitalWrite(right_blinker_pin, LOW);
            return 'L';
        case (right_turn):
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, flash);
            return 'R';
        default:
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            return 'X';
    }
}

bool hazards() {
    static uint32_t previousMillis = 0;
    uint32_t currentMillis = millis();
    static bool flash = false;
    if ((currentMillis - previousMillis) >= blink_interval) {
        flash = !flash;
        previousMillis = millis();
    }
    switch (hazards_state) {
        case (hazards_on):
            digitalWrite(left_blinker_pin, flash);
            digitalWrite(right_blinker_pin, flash);
            digitalWrite(brakelights_pin, flash);
            return true;
        case (hazards_off):
            currentMillis = 0;
            previousMillis = 0;
            flash = false;
        default:
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            digitalWrite(brakelights_pin, LOW);
    }
    return false;
}

bool headlights() {
    switch (headlights_state) {
        case (headlights_on):
            digitalWrite(headlights_pin, HIGH);
            return true;
        default:
            digitalWrite(headlights_pin, LOW);
            return false;
    }
}

bool horn() {
    switch (horn_state) {
        case (horn_on):
            digitalWrite(horn_pin, HIGH);
            return true;
        default:
            digitalWrite(horn_pin, LOW);
            return false;
    }
}
#endif
