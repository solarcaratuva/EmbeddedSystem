#include <ArduinoJson.h>
#include <FlexCAN.h>
#include "BPS.h"
#include "KLS.h"
#include "UI.h"
#include "console.h"
#include "constants.h"
#include "lights.h"
#include "pindef.h"

StaticJsonDocument<16> can0_json;
StaticJsonDocument<16> can1_json;
StaticJsonDocument<128> inputs_json;

int three_way_switch_interpreter(int analog_read_value);

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
        can0_json["id"] = msg[0].id;
        can0_json["ext"] = msg[0].ext;
        can0_json["len"] = msg[0].len;
        can0_json["buf"] = msg[0].buf;
        serializeJson(can0_json, Serial);

        bps.parse(msg[0]);
    }
    if (Can1.available()) {
        Can1.read(msg[1]);
        can1_json["id"] = msg[1].id;
        can1_json["ext"] = msg[1].ext;
        can1_json["len"] = msg[1].len;
        can1_json["buf"] = msg[1].buf;
        serializeJson(can1_json, Serial);

        kls_l.parse(msg[1]);
        kls_r.parse(msg[1]);
    }

    // set throttle for motor
    int throttle = map(analogRead(PIN_THROTTLE_CTRL), 400, 600, 0, MAX_PWM);
    // kls_l.set_throttle(throttle);
    // kls_r.set_throttle(throttle);

    // pins should output a squarewave with 50% duty cycle
    kls_l.set_throttle(2147483647);
    kls_r.set_throttle(2147483647);

    // control lights and horn
    switch (analogRead(PIN_TURNSIG_CTRL)) {
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

    hazards_state = digitalRead(PIN_HAZARD_CTRL);
    headlights_state = digitalRead(PIN_HEADLIGHT_CTRL);
    horn_state = digitalRead(PIN_HORN_CTRL);

    turn_signal();
    hazards();
    headlights();
    horn();

    inputs_json["BRAKE_CTRL"] = analogRead(PIN_BRAKE_CTRL);
    inputs_json["REGEN_CTRL"] = analogRead(PIN_REGEN_CTRL);
    inputs_json["GEARSHIFT_CTRL"] = three_way_switch(analogRead(PIN_GEARSHIFT_CTRL));
    inputs_json["TURNSIG_CTRL"] = three_way_switch(analogRead(PIN_TURNSIG_CTRL));
    inputs_json["THROTTLE_CTRL"] = analogRead(PIN_THROTTLE_CTRL);
    inputs_json["STEER_CTRL"] = analogRead(PIN_STEER_CTRL);
    inputs_json["HAZARD_CTRL"] = digitalRead(PIN_HAZARD_CTRL);
    inputs_json["DOWN_CTRL"] = digitalRead(PIN_DOWN_CTRL);
    inputs_json["UP_CTRL"] = digitalRead(PIN_UP_CTRL);
    inputs_json["SEL_CTRL"] = digitalRead(PIN_SEL_CTRL);
    inputs_json["KILL_SENSE"] = digitalRead(PIN_KILL_SENSE);
    inputs_json["HORN_CTRL"] = digitalRead(PIN_HORN_CTRL);
    inputs_json["HEADLIGHT_CTRL"] = digitalRead(PIN_HEADLIGHT_CTRL);
    inputs_json["BRAKE_CTRL"] = digitalRead(PIN_BRAKE_CTRL);
    serializeJson(inputs_json, Serial);

    // LCD UI stuff
    delay(500);
}

// expects analogWriteResolution to be set to 14
int8_t three_way_switch(uint16_t analog_value) {
    switch (analog_value) {
        case 0 ... 255:
            return -1;
        case 768 ... 1023:
            return 0;
        default:
            return 1;
    }
}
