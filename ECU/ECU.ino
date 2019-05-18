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
    pinMode(PIN_GEARSHIFT_CTRL, INPUT);
    pinMode(PIN_TURNSIG_CTRL, INPUT);
    pinMode(PIN_HAZARD_CTRL, INPUT);
    pinMode(PIN_HORN_CTRL, INPUT);
    pinMode(PIN_HEADLIGHT_CTRL, INPUT);
    Serial.begin(115200);
}

void loop() {
    /*static uint8_t t;

    static uint8_t value = 0;
    if (!t) value = map(analogRead(PIN_MOTOR_R_METER), 400, 600, 0, 256);
    Serial.println(analogRead(PIN_MOTOR_R_METER));
    digitalWrite(PIN_HORN, value > t);
    digitalWrite(PIN_HEADLIGHTS, value > t);
    digitalWrite(PIN_BRAKELIGHTS, value > t);
    digitalWrite(PIN_RIGHT_BLINKERS, value > t);
    digitalWrite(PIN_LEFT_BLINKERS, value > t);

    delayMicroseconds(50);
    t++;*/

    turn_sig_state = analogRead(turn_sig_pin);
    hazard_button_state = digitalRead(hazards_ctrl);
    headlight_button_state = digitalRead(headlight_ctrl);
    horn_button_state = digitalRead(horn_ctrl);

    switch (turn_sig_state) {
        case 0 ... 255:
            turn_state = left_turn;
            break;
        case 765 ... 1023:
            turn_state = right_turn;
            break;
        default:
            turn_state = turn_off;
            break;
    }
    Serial.println(turn_signal());

    if (hazard_button_state == HIGH) {
        hazards_state = hazards_on;
    } else {
        hazards_state = hazards_off;
    }
    Serial.println(hazards());

    if (headlight_button_state == HIGH) {
        headlights_state = headlights_on;
    } else {
        headlights_state = headlights_off;
    }
    Serial.println(headlights());

    if (horn_button_state == HIGH) {
        horn_state = horn_on;
    } else {
        horn_state = horn_off;
    }
    delay(500);
}
