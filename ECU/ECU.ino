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

UI lcd;

void setup() {
    Serial.begin(115200);

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

    Can0.begin();
    Can1.begin();
    UI::init();
    while (!Serial)
        ;
}

void loop() {
    // read CANbus busses and provide CAN packet to respective libraries
    if (Can0.available()) {
        Can0.read(msg[0]);
        bps.parse(msg[0]);
    }
    if (Can1.available()) {
        Can1.read(msg[1]);
        kls_l.parse(msg[1]);
        kls_r.parse(msg[1]);
    }

    // set throttle for motor
    // uint32_t throttle = map(analogRead(PIN_THROTTLE_CTRL), 400, 600, 0, MAX_PWM);
    uint32_t throttle = map(analogRead(PIN_THROTTLE_CTRL), 0, 1023, 0, MAX_PWM);

    Serial.println(throttle);
    kls_l.set_throttle(throttle);
    kls_r.set_throttle(throttle);

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

    // LCD UI stuff
    // if (FAULT){
    // UI::fault_condition(char* str); //Only if there is a fault
    //}
    // FUN ONLY IF WANTED (STILL NEED TO BE IMPLEMENTED IN UI.h CURRENTLY DO NOTHING
    // lcd.right_turn_signal_update(bool on);
    // lcd.left_turn_singal_update(bool on);
    UI::SOC_update(0);  // TODO: need to convert batt_status->pack_SOC from a float to an int, or
                        // better, change your function to accept float. --maxim
    UI::speed_update((int)(((kls_l.status.rpm * 14) + (kls_r.status.rpm * 14)) / 2));
    UI::bat_voltage_update((int)bps.batt_stat.pack_voltage);
    UI::bat_current_update((int)bps.batt_stat.pack_current);
    UI::bat_temp_update((int)bps.batt_stat.pack_avg_temp);
    UI::regen_level_update(0);  // DO WE HAVE A REGEN LEVEL VAR?? we do now (untested). --maxim.
}
