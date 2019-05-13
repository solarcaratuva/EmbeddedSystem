/*
 * Arslan Aziz
 * Interface with Orion standard BPS v1 over CAN
 * Updates battery & bps related fields
 * Uses pawelsky fork of FlexCan library found at
 * https://github.com/pawelsky/FlexCAN_Library
 */

#ifndef bps_h
#define bps_h

#include <FlexCAN.h>
//#include <kinetis_flexcan.h>

typedef struct batt_status {
    float pack_current;
    float pack_voltage;
    float pack_SOC;
    uint8_t pack_high_temp;  // TODO float?
    uint8_t pack_avg_temp;   // TODO float?
} batt_status;

typedef struct bps_status {
    // bools break out from 8 bit relay_status message
    bool discharge_enable;
    bool charge_enable;
    bool charge_safety_enable;
    bool malfunction;
    bool multi_purpose_out_enable;
    bool always_on_signal_status;
    bool ready_signal_status;
    bool charge_signal_status;
    uint16_t pack_charge_limit;
    uint16_t pack_discharge_limit;
    // each bit of current_limit_status corresponds to reason for current limit change
    // TODO: break out current_limit_status into bools, interpret with parse function
    uint16_t current_limit_status;
} bps_status;

typedef struct bps_errors {
    bool P0A1F;  // internal comm fault
    bool P0A00;  // internal conversion fault
    bool P0A80;  // weak cell fault
    bool P0AFA;  // low cell volt fault
    bool U0100;  // comm fault?
    bool P0A04;  // open wiring fault
    bool P0AC0;  // current sensor fault
    bool P0A01;  // pack volt sensor fault
    bool P0A02;  // weak pack fault
    bool P0A03;  // volt redundancy fault
    bool P0A81;  // fan monitor fault
    bool P0A9C;  // thermistor fault
    bool P0560;  // always-on supply fault
    bool P0AA6;  // high volt isolation fault
    bool P0A05;  // 12 volt power supply fault
    bool P0A06;  // charge limit enforemcent fault
    bool P0A07;  // discharge limit enforcement fault
    bool P0A08;  // charger safety relay fault
    bool P0A09;  // internal memory fault
    bool P0A0A;  // internal thermistor fault
    bool P0A0B;  // internal logic fault

} bps_errors;

class BPS {
   private:
    uint32_t id;
    void printONOFF(bool sig) const;

   public:
    batt_status batt_stat;
    bps_status bps_stat;
    bps_errors errors;

    BPS(uint32_t addr = 0x7E3);

    uint8_t parse(const CAN_message_t &msg);

    void print() const;
};
#endif
