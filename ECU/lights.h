#ifndef __LIGHTS_H__
#define __LIGHTS_H__

#include "pindef.h"
// TURN SIGNAL ENUMERATED TYPE
enum turn_state_t { off, left, right };

turn_state_t turn_state = off;

bool hazards_state = 0, headlights_state = off, horn_state = 0;

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

uint16_t turn_sig_state = LOW;
bool hazard_button_state = LOW;
bool horn_button_state = LOW;
bool headlight_button_state = LOW;

void turn_signal() {
    static uint32_t start_time = 0;
    uint32_t current_time = millis();
    static bool flash = false;
    if ((current_time - start_time) >= blink_interval) {
        flash = !flash;
        start_time = millis();
    }
    switch (turn_state) {
        case (off):
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            current_time = 0;
            start_time = 0;
            flash = false;
            return;
        case (left):
            digitalWrite(left_blinker_pin, flash);
            digitalWrite(right_blinker_pin, LOW);
            return;
        case (right):
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, flash);
            return;
        default:
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            return;
    }
}

void hazards() {
    static uint32_t start_time = 0;
    uint32_t current_time = millis();
    static bool flash = false;

    if ((current_time - start_time) >= blink_interval) {
        start_time = millis();
        flash = !flash;
        if (hazards_state) {
            digitalWrite(left_blinker_pin, flash);
            digitalWrite(right_blinker_pin, flash);
            digitalWrite(brakelights_pin, flash);
        } else {
            digitalWrite(left_blinker_pin, LOW);
            digitalWrite(right_blinker_pin, LOW);
            digitalWrite(brakelights_pin, LOW);
        }
    }
}

void headlights() { digitalWrite(headlights_pin, headlights_state); }

void horn() { digitalWrite(horn_pin, horn_state); }

#endif
