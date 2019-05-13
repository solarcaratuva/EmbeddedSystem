#include <FlexCAN.h>
#include <kinetis_flexcan.h>
#include <cstdlib>
#include <string>
#include "KLS/KLS.h"
#include "UI.h"
#include "lights.h"
#include "pindef.h"

void setup() {
    pinMode(PIN_HORN, OUTPUT);
    pinMode(PIN_HEADLIGHTS, OUTPUT);
    pinMode(PIN_BRAKELIGHTS, OUTPUT);
    pinMode(PIN_STROBE_CTRL, OUTPUT);
    pinMode(PIN_RIGHT_BLINKERS, OUTPUT);
    pinMode(PIN_LEFT_BLINKERS, OUTPUT);
    pinMode(PIN_TURNSIG_CTRL, INPUT);
    pinMode(PIN_HAZARD_CTRL, INPUT);
    pinMode(PIN_HORN_CTRL, INPUT);
    pinMode(PIN_HEADLIGHT_CTRL, INPUT);
    Serial.begin(9600);
}

void loop() {
    static uint8_t t;

    static uint8_t value = 0;
    if (!t) value = map(analogRead(PIN_MOTOR_R_METER), 400, 600, 0, 256);
    Serial.println(analogRead(PIN_MOTOR_R_METER));
    digitalWrite(PIN_HORN, value > t);
    digitalWrite(PIN_HEADLIGHTS, value > t);
    digitalWrite(PIN_BRAKELIGHTS, value > t);
    digitalWrite(PIN_RIGHT_BLINKERS, value > t);
    digitalWrite(PIN_LEFT_BLINKERS, value > t);

    delayMicroseconds(50);
    t++;
}

// void loop() {
//    turn_sig_state = analogRead(turn_sig_pin);
//    hazard_button_state = digitalRead(hazards_ctrl);
//    horn_button_state = digitalRead(horn_ctrl);
//    headlight_button_state = digitalRead(headlight_ctrl);
//    turn_signal();
//    {
//        c = turn_sig_state;
//        switch (c) {
//            case (0 - 100):
//                turn_state = left_turn;
//                break;
//            case (900 - 1000):
//                turn_state = right_turn;
//                break;
//            default:
//                turn_state = turn_off;
//                break;
//        }
//    }
//    hazards();
//    {
//        d = hazards_state;
//        switch (d) {
//            case (HIGH):
//                hazards_state = hazards_on;
//                break;
//            default:
//                hazards_state = hazards_off;
//                break;
//        }
//    }
//    head_lights(); {
//        e = headlights_state;
//        switch (e) {
//            case(HIGH):
//                headlights_state = headlights_on;
//                break;
//            default:
//                headlights_state = headlights_off;
//                break;
//
//        }
//    }
//    horn(); {
//        f = horn_state;
//        switch (f) {
//            case(HIGH):
//                horn_state = horn_on;
//                break;
//            default:
//                horn_state = horn_off;
//                break;
//        }
//    }
//}
