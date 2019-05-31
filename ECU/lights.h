#ifndef __LIGHTS_H__
#define __LIGHTS_H__

#include "pindef.h"
// TURN SIGNAL ENUMERATED TYPE
enum turn_state_t { off, left, right };

turn_state_t turn_state = off;

bool hazards_state = 0, headlights_state = off, horn_state = 0;

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
            digitalWrite(PIN_LEFT_BLINKERS, LOW);
            digitalWrite(PIN_RIGHT_BLINKERS, LOW);
            current_time = 0;
            start_time = 0;
            flash = false;
            return;
        case (left):
            digitalWrite(PIN_LEFT_BLINKERS, flash);
            digitalWrite(PIN_RIGHT_BLINKERS, LOW);
            return;
        case (right):
            digitalWrite(PIN_LEFT_BLINKERS, LOW);
            digitalWrite(PIN_RIGHT_BLINKERS, flash);
            return;
        default:
            digitalWrite(PIN_LEFT_BLINKERS, LOW);
            digitalWrite(PIN_RIGHT_BLINKERS, LOW);
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
            digitalWrite(PIN_LEFT_BLINKERS, flash);
            digitalWrite(PIN_RIGHT_BLINKERS, flash);
            digitalWrite(PIN_BRAKELIGHTS, flash);
        } else {
            digitalWrite(PIN_LEFT_BLINKERS, LOW);
            digitalWrite(PIN_RIGHT_BLINKERS, LOW);
            digitalWrite(PIN_BRAKELIGHTS, LOW);
        }
    }
}

void headlights() { digitalWrite(PIN_HEADLIGHTS, headlights_state); }

void horn() { digitalWrite(PIN_HORN, horn_state); }

#endif
