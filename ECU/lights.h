#ifndef __LIGHTS_H__
#define __LIGHTS_H__

#include "Chrono.h"
#include "pindef.h"

Chrono light_timer;

// TURN SIGNAL ENUMERATED TYPE
enum turn_state_t { off, left, right };

turn_state_t turn_state = off;

bool hazards_state = 0, headlights_state = off, horn_state = 0;

uint32_t blink_interval = 500;  // interval for blinking the lights

uint16_t turn_sig_state = LOW;
bool hazards_button_state = LOW;
bool horn_button_state = LOW;
bool headlight_button_state = LOW;
bool hazards_toggle_state = LOW;

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

void toggle_hazard_state() {
    hazards_toggle_state = !hazards_toggle_state;
    hazards_state = LOW;
}

void hazards() {
    /*static uint32_t start_time = 0;
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
    }*/

    // Serial.println(hazards_state);
    /*if (light_timer.hasPassed(500)) {
        hazards_state = !hazards_state;
        light_timer.restart();
    }*/
    if (hazards_state) {
        // digitalWrite(PIN_HEADLIGHTS, HIGH);
        digitalWrite(PIN_LEFT_BLINKERS, HIGH);
        digitalWrite(PIN_RIGHT_BLINKERS, HIGH);
        digitalWrite(PIN_BRAKELIGHTS, HIGH);
    } else {
        // digitalWrite(PIN_HEADLIGHTS, LOW);
        digitalWrite(PIN_LEFT_BLINKERS, LOW);
        digitalWrite(PIN_RIGHT_BLINKERS, LOW);
        digitalWrite(PIN_BRAKELIGHTS, LOW);
    }
}

void headlights() { digitalWrite(PIN_HEADLIGHTS, HIGH); }

void horn() { digitalWrite(PIN_HORN, horn_state); }

#endif
