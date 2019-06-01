#ifndef __UI_H__
#define __UI_H__

// #include "pindef.h"
#include "lights.h"
// UI.h contains all the functions needed to retreive the state of the switches, buttons etc. from
// the user. Pins allocated to this task have CTRL in the name.

// important Notes : use Serial1 for NextionDisplay

class UI {
   public:
    static void init();
    static void update();
    static void initialize_display();
    static void fault_condition(char* str);
    static void right_turn_signal_update(bool on);
    static void left_turn_singal_update(bool on);
    static void SOC_update(int level);
    static void speed_update(int spd);
    static void bat_voltage_update(int b_volt);
    static void bat_current_update(int b_curr);
    static void bat_temp_update(int b_temp);
    static void regen_level_update(int regen_lvl);

    /*
     * Check for fault condition (with message passed as a param??)
     * Update photo for when blinkers are running
     * Update SOC
     * Update speed
     * Update Battery Voltage
     * Update Battery Current
     * Update Battery Temperature
     * Update Regen Level
     * Other???
     */

    // Names of Objects on the LCD
    /*
     * Turn Signals:
     *  left_signal (picture)
     *  right_signal (picture)
     *
     * Speed:
     *  speed (number)
     *  speed_label (text)
     *
     * Regen:
     *  regen_level (number)
     *  regen_label (text)
     *
     * Battery Current:
     *  bat_current (number)
     *  bat_cur_label (text)
     *
     * Battery Temperature:
     *  bat_temp (number)
     *  temp_label (text)
     *
     * State of Charge:
     *  SOC_meter (Progress Bar)
     *  SOC_label (text)
     *
     * Battery Voltage:
     *  bat_voltage (number)
     *  bat_vol_label (text)
     *
     * Fault:
     *  fault_dialoge (text)
     */
};

void UI::init() {
    // TODO
    Serial.begin(115200);
    while (!Serial)
        ;

    Serial1.begin(9600);

    while (!Serial1) {
        delay(1000);
    }

    initialize_display();
}

void UI::update() {
    // TODO
    delay(1000);
}

void UI::fault_condition(char* str) {
    Serial1.print("SOC_.val=");
    Serial1.write(0x22);
    Serial1.print(str);
    Serial1.write(0x22);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::right_turn_signal_update(bool on) {
    if(on){
        //change picture to right turn
    }
    else{
        //change picture to blank
    }
}

void UI::left_turn_singal_update(bool on) {
    if (on){
        //change picture to left turn
    }
    else{
    //change picture to blank
    }
}

void UI::turn_signal_update(){
    switch (turn_state) {
        case (turn_off):
            right_turn_signal_update(false);
            left_turn_singal_update(false);
            break;
        case (left_turn):
            right_turn_signal_update(false);
            left_turn_singal_update(true);
            break;
        case (right_turn):
            right_turn_signal_update(true);
            left_turn_singal_update(false);
            break;
        default:
            right_turn_signal_update(false);
            left_turn_singal_update(false);
    }
}

void UI::SOC_update(int level) {
    Serial1.print("SOC_.val=");
    Serial1.print(level);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::speed_update(int spd) {
    Serial1.print("extra_val.val=");
    Serial1.print(spd);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::bat_voltage_update(int b_volt) {
    Serial1.print("extra_val.val=");
    Serial1.print(b_volt);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::bat_current_update(int b_curr) {
    Serial1.print("extra_val.val=");
    Serial1.print(b_curr);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::bat_temp_update(int b_temp) {
    Serial1.print("extra_val.val=");
    Serial1.print(b_temp);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

void UI::regen_level_update(int regen_lvl) {
    Serial1.print("extra_val.val=");
    Serial1.print(regen_lvl);
    Serial1.write(0xff);
    Serial1.write(0xff);
    Serial1.write(0xff);
}

static void UI::initialize_display(){
    fault_condition("");
    SOC_Update(0);
    speed_update(0);
    bat_voltage_update(0);
    bat_current_update(0);
    bat_temp(0);
    regen_level_update(0);
}

#endif

