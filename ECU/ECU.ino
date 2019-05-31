#include <ArduinoJson.h>
#include "BPS.h"
#include "KLS.h"
#include "UI.h"
#include "console.h"
#include "constants.h"
#include "lights.h"
#include "pindef.h"

// used strictly for BMS
FlexCAN Can0(500000, 0);
// wired to both motor controllers.
// TODO: find a way to change the CAN ID of one of them.
FlexCAN Can1(250000, 1);

// 2 CAN structs to store received data
CAN_message_t msg[2];

BPS bps;
// Left motor initialized with source address 0x05
KLS kls_l(0x05);
// Right motor initialized with source address 0x06
KLS kls_r(0x06);

void setup() {
    digitalWrite(PIN_BRAKE_CTRL, LOW);
    pinMode(PIN_BRAKE_CTRL, INPUT);
    digitalWrite(PIN_REGEN_CTRL, LOW);
    pinMode(PIN_REGEN_CTRL, INPUT);
    digitalWrite(PIN_GEARSHIFT_CTRL, LOW);
    pinMode(PIN_GEARSHIFT_CTRL, INPUT);
    digitalWrite(PIN_TURNSIG_CTRL, LOW);
    pinMode(PIN_TURNSIG_CTRL, INPUT);
    digitalWrite(PIN_THROTTLE_CTRL, LOW);
    pinMode(PIN_THROTTLE_CTRL, INPUT);
    digitalWrite(PIN_STEER_CTRL, LOW);
    pinMode(PIN_STEER_CTRL, INPUT);
    digitalWrite(PIN_HAZARD_CTRL, LOW);
    pinMode(PIN_HAZARD_CTRL, INPUT);
    digitalWrite(PIN_DOWN_CTRL, LOW);
    pinMode(PIN_DOWN_CTRL, INPUT);
    digitalWrite(PIN_UP_CTRL, LOW);
    pinMode(PIN_UP_CTRL, INPUT);
    digitalWrite(PIN_SEL_CTRL, LOW);
    pinMode(PIN_SEL_CTRL, INPUT);
    digitalWrite(PIN_KILL_SENSE, LOW);
    pinMode(PIN_KILL_SENSE, INPUT);
    digitalWrite(PIN_HAZARD_LED, LOW);
    pinMode(PIN_HAZARD_LED, INPUT);
    digitalWrite(PIN_UART_1_RX, LOW);
    pinMode(PIN_UART_1_RX, INPUT);
    digitalWrite(PIN_UART_1_TX, LOW);
    pinMode(PIN_UART_1_TX, INPUT);

    /******************************************/
    /* pin definitions for motor controllers  */
    /******************************************/
    digitalWrite(PIN_MOTOR_L_REGEN_EN, LOW);
    pinMode(PIN_MOTOR_L_REGEN_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_L_REGEN, LOW);
    pinMode(PIN_MOTOR_L_REGEN, OUTPUT);
    digitalWrite(PIN_MOTOR_L_THROTTLE, LOW);
    pinMode(PIN_MOTOR_L_THROTTLE, OUTPUT);
    digitalWrite(PIN_MOTOR_L_ECO_EN, LOW);
    pinMode(PIN_MOTOR_L_ECO_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_L_METER, LOW);
    pinMode(PIN_MOTOR_L_METER, OUTPUT);
    digitalWrite(PIN_MOTOR_L_FWD_EN, LOW);
    pinMode(PIN_MOTOR_L_FWD_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_L_REV_EN, LOW);
    pinMode(PIN_MOTOR_L_REV_EN, OUTPUT);

    digitalWrite(PIN_MOTOR_R_REGEN_EN, LOW);
    pinMode(PIN_MOTOR_R_REGEN_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_R_REGEN, LOW);
    pinMode(PIN_MOTOR_R_REGEN, OUTPUT);
    digitalWrite(PIN_MOTOR_R_THROTTLE, LOW);
    pinMode(PIN_MOTOR_R_THROTTLE, OUTPUT);
    digitalWrite(PIN_MOTOR_R_ECO_EN, LOW);
    pinMode(PIN_MOTOR_R_ECO_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_R_METER, LOW);
    pinMode(PIN_MOTOR_R_METER, OUTPUT);
    digitalWrite(PIN_MOTOR_R_FWD_EN, LOW);
    pinMode(PIN_MOTOR_R_FWD_EN, OUTPUT);
    digitalWrite(PIN_MOTOR_R_REV_EN, LOW);
    pinMode(PIN_MOTOR_R_REV_EN, OUTPUT);

    /******************************************/
    /* pin definitions for high power devices */
    /******************************************/
    digitalWrite(PIN_HORN, LOW);
    pinMode(PIN_HORN, OUTPUT);
    digitalWrite(PIN_HEADLIGHTS, LOW);
    pinMode(PIN_HEADLIGHTS, OUTPUT);
    digitalWrite(PIN_BRAKELIGHTS, LOW);
    pinMode(PIN_BRAKELIGHTS, OUTPUT);
    digitalWrite(PIN_STROBE_CTRL, LOW);
    pinMode(PIN_STROBE_CTRL, OUTPUT);
    digitalWrite(PIN_RIGHT_BLINKERS, LOW);
    pinMode(PIN_RIGHT_BLINKERS, OUTPUT);
    digitalWrite(PIN_LEFT_BLINKERS, LOW);
    pinMode(PIN_LEFT_BLINKERS, OUTPUT);
    digitalWrite(PIN_HEADLIGHT_CTRL, LOW);
    pinMode(PIN_HEADLIGHT_CTRL, INPUT);
    digitalWrite(PIN_HORN_CTRL, LOW);
    pinMode(PIN_HORN_CTRL, INPUT);
    digitalWrite(PIN_BRAKE_CTRL, LOW);
    pinMode(PIN_BRAKE_CTRL, INPUT);

    Serial.begin(115200);
    Can0.begin();
    Can1.begin();
}

void loop() {
    // read CANbus busses and provide CAN packet to respective libraries
    if (Can0.available()) {
        Can0.read(msg[0]);
        Serial.print("CAN0 ");
        Serial.printf("{\"id\": %d, \"ext\": %d, \"len\": %d, \"buf\": [", msg[0].id, msg[0].ext,
                      msg[0].len);  // JSON format
        for (int i = 0; i < msg[0].len - 1; i++) {
            Serial.printf("%d, ", msg[0].buf[i]);
        }
        Serial.printf("%d}", msg[0].buf[msg[0].len]);

        bps.parse(msg[0]);
    }
    if (Can1.available()) {
        Can1.read(msg[1]);
        Serial.print("CAN1 ");
        Serial.printf("{\"id\": %d, \"ext\": %d, \"len\": %d, \"buf\": [", msg[1].id, msg[1].ext,
                      msg[1].len);  // JSON format
        for (int i = 0; i < msg[1].len - 1; i++) {
            Serial.printf("%d, ", msg[1].buf[i]);
        }
        Serial.printf("%d}", msg[1].buf[msg[1].len]);

        kls_l.parse(msg[1]);
        kls_r.parse(msg[1]);
    }

    // set throttle for motor
    int throttle = map(analogRead(PIN_THROTTLE_CTRL), 400, 600, 0, MAX_PWM);
    kls_l.set_throttle(throttle);
    kls_r.set_throttle(throttle);

    // control lights and horn
    switch (analogRead(turn_sig_pin)) {
        case 0 ... 255:
            turn_state = left;
            break;
        case 768 ... 1023:
            turn_state = right;
            break;
        default:
            turn_state = off;
            break;
    }

    hazards_state = digitalRead(hazards_ctrl);
    headlights_state = digitalRead(headlight_ctrl);
    horn_state = digitalRead(horn_ctrl);

    turn_signal();
    hazards();
    headlights();
    horn();

    // LCD UI stuff

    // all objects are JSON objects hardcoded because I'm too lazy to learn the advanced JSON
    // library --maxim
    Serial.print("\"inputs\":{\n");
    Serial.printf("\t{\"BRAKE_CTRL\": %d},\n", analogRead(PIN_BRAKE_CTRL));
    Serial.printf("\t{\"REGEN_CTRL\": %d},\n", analogRead(PIN_REGEN_CTRL));
    Serial.printf("\t{\"GEARSHIFT_CTRL\": %d},\n",
                  three_way_switch(analogRead(PIN_GEARSHIFT_CTRL)));
    Serial.printf("\t{\"TURNSIG_CTRL\": %d},\n", three_way_switch(analogRead(PIN_TURNSIG_CTRL)));
    Serial.printf("\t{\"THROTTLE_CTRL\": %d},\n", analogRead(PIN_THROTTLE_CTRL));
    Serial.printf("\t{\"STEER_CTRL\": %d},\n", analogRead(PIN_STEER_CTRL));
    Serial.printf("\t{\"HAZARD_CTRL\": %d},\n", digitalRead(PIN_HAZARD_CTRL));
    Serial.printf("\t{\"DOWN_CTRL\": %d},\n", digitalRead(PIN_DOWN_CTRL));
    Serial.printf("\t{\"UP_CTRL\": %d},\n", digitalRead(PIN_UP_CTRL));
    Serial.printf("\t{\"SEL_CTRL\": %d},\n", digitalRead(PIN_SEL_CTRL));
    Serial.printf("\t{\"KILL_SENSE\": %d},\n", digitalRead(PIN_KILL_SENSE));
    Serial.printf("\t{\"HORN_CTRL\": %d},\n", digitalRead(PIN_HORN_CTRL));
    Serial.printf("\t{\"HEADLIGHT_CTRL\": %d},\n", digitalRead(PIN_HEADLIGHT_CTRL));
    Serial.printf("\t{\"BRAKE_CTRL\": %d},\n", digitalRead(PIN_BRAKE_CTRL));
    Serial.print("}\n");

    delay(500);
}

// expects analogWriteResolution to be set to 14
uint8_t three_way_switch(uint16_t analog_value) {
    switch (analog_value) {
        case 0 ... 255:
            return -1;
        case 768 ... 1023:
            return 0;
        default:
            return 1;
    }
}
