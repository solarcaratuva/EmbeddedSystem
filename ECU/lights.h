#ifndef __LIGHTS_H__
#define __LIGHTS_H__
#define LEFT 1
#define RIGHT -1
#define ON 1
#define OFF 0

#include "Chrono.h"
#include "pindef.h"

Chrono light_timer;

// TURN SIGNAL ENUMERATED TYPE
// enum turn_state_t { off, left, right };

// turn_state_t turn_state = off;
int8_t turn_state = OFF;

bool hazards_state = OFF, headlights_state = OFF, horn_state = OFF;

uint32_t blink_interval = 500;  // interval for blinking the lights

uint16_t turn_sig_state = LOW;
bool hazards_button_state = LOW;
bool horn_button_state = LOW;
bool headlight_button_state = LOW;

bool hazards_toggle_state = LOW;

bool left_sig_state = LOW;
bool right_sig_state = LOW;

void turn_signal() {
    if (hazards_toggle_state == LOW) {
        // Serial.println(turn_state);
        if (light_timer.hasPassed(500)) {
            left_sig_state = !left_sig_state;
            right_sig_state = !right_sig_state;
            light_timer.restart();
        }

        switch (turn_state) {
            case (LEFT):
                digitalWrite(PIN_LEFT_BLINKERS, left_sig_state);
                digitalWrite(PIN_RIGHT_BLINKERS, LOW);
                return;
            case (RIGHT):
                digitalWrite(PIN_LEFT_BLINKERS, LOW);
                digitalWrite(PIN_RIGHT_BLINKERS, right_sig_state);
                return;
            default:
                digitalWrite(PIN_LEFT_BLINKERS, LOW);
                digitalWrite(PIN_RIGHT_BLINKERS, LOW);
                return;
        }
    }
}

void toggle_hazard_state() {
    hazards_toggle_state = !hazards_toggle_state;
    hazards_state = LOW;
}

void hazards() {
    if (hazards_toggle_state == HIGH) {
        if (light_timer.hasPassed(500)) {
            hazards_state = !hazards_state;
            light_timer.restart();
        }
        if (hazards_state) {
            // digitalWrite(PIN_HEADLIGHTS, HIGH);
            digitalWrite(PIN_LEFT_BLINKERS, HIGH);
            digitalWrite(PIN_RIGHT_BLINKERS, HIGH);
            digitalWrite(PIN_BRAKELIGHTS, HIGH);
        } else {
            digitalWrite(PIN_HEADLIGHTS, LOW);
            digitalWrite(PIN_LEFT_BLINKERS, LOW);
            digitalWrite(PIN_RIGHT_BLINKERS, LOW);
            digitalWrite(PIN_BRAKELIGHTS, LOW);
        }
    }
}

void headlights() { digitalWrite(PIN_HEADLIGHTS, HIGH); }

void horn() { digitalWrite(PIN_HORN, horn_state); }

#endif
