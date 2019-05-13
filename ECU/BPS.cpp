#include "BPS.h"
#include <FlexCAN.h>
//#include <kinetis_flexcan.h>

// TODO find address (0x7E3 ?)
BPS::BPS(uint32_t addr /* = 0x7E3*/) {
    id = addr;

    batt_stat.pack_current = 0;
    batt_stat.pack_voltage = 0;
    batt_stat.pack_SOC = 0;
    batt_stat.pack_high_temp = 0;
    batt_stat.pack_avg_temp = 0;

    bps_stat.discharge_enable = false;
    bps_stat.charge_enable = false;
    bps_stat.charge_safety_enable = false;
    bps_stat.malfunction = false;
    bps_stat.multi_purpose_out_enable = false;
    bps_stat.always_on_signal_status = false;
    bps_stat.ready_signal_status = false;
    bps_stat.charge_signal_status = false;
    bps_stat.pack_charge_limit = 0;
    bps_stat.pack_discharge_limit = 0;
    bps_stat.current_limit_status = 0;

    errors.P0A1F = false;
    errors.P0A00 = false;
    errors.P0A80 = false;
    errors.P0AFA = false;
    errors.U0100 = false;
    errors.P0A04 = false;
    errors.P0AC0 = false;
    errors.P0A01 = false;
    errors.P0A02 = false;
    errors.P0A03 = false;
    errors.P0A81 = false;
    errors.P0A9C = false;
    errors.P0560 = false;
    errors.P0AA6 = false;
    errors.P0A05 = false;
    errors.P0A06 = false;
    errors.P0A07 = false;
    errors.P0A08 = false;
    errors.P0A09 = false;
    errors.P0A0A = false;
    errors.P0A0B = false;
}

uint8_t BPS::parse(const CAN_message_t &msg) {
    uint8_t parsed = 0;

    // message id = uint32_t
    // message buf = uint8_t[8]

    // message 1: error codes, highest priority, 24 ms transmit cycle
    if (msg.id == (uint32_t)0x001) {
        parsed = 1;
        // Custom flag 1 (1 byte)
        // P0A1F,P0A00,P0A80,P0AFA,P0A04,P0AC0,P0A01,P0A02
        errors.P0A1F = msg.buf[0] & 0x1;
        errors.P0A00 = (msg.buf[0] >> 1) & 0x1;
        errors.P0A80 = (msg.buf[0] >> 2) & 0x1;
        errors.P0AFA = (msg.buf[0] >> 3) & 0x1;
        errors.P0A04 = (msg.buf[0] >> 4) & 0x1;
        errors.P0AC0 = (msg.buf[0] >> 5) & 0x1;
        errors.P0A01 = (msg.buf[0] >> 6) & 0x1;
        errors.P0A02 = (msg.buf[0] >> 7) & 0x1;
        // Custom flag 2 (1 byte)
        // P0A03,P0A81,P0A9C,U0100,P0560,P0AA6,P0A05,P0A06
        errors.P0A03 = msg.buf[1] & 0x1;
        errors.P0A81 = (msg.buf[1] >> 1) & 0x1;
        errors.P0A9C = (msg.buf[1] >> 2) & 0x1;
        errors.U0100 = (msg.buf[1] >> 3) & 0x1;
        errors.P0560 = (msg.buf[1] >> 4) & 0x1;
        errors.P0AA6 = (msg.buf[1] >> 5) & 0x1;
        errors.P0A05 = (msg.buf[1] >> 6) & 0x1;
        errors.P0A06 = (msg.buf[1] >> 7) & 0x1;
        // Custom flag 3 (1 byte)
        // P0A07,P0A08,P0A09,P0A0A,P0A0B,n/a,n/a,n/a
        errors.P0A07 = msg.buf[2] & 0x1;
        errors.P0A08 = (msg.buf[2] >> 1) & 0x1;
        errors.P0A09 = (msg.buf[2] >> 2) & 0x1;
        errors.P0A0A = (msg.buf[2] >> 3) & 0x1;
        errors.P0A0B = (msg.buf[2] >> 4) & 0x1;
    }
    // message 2: battery status, middle priority, 16 ms transmit cycle
    if (msg.id == (uint32_t)0x002) {
        parsed = 2;
        // Pack Current (2 bytes) (unit = 0.1 A)
        batt_stat.pack_current = ((uint16_t)msg.buf[0] << 8 | msg.buf[1]) / 10.0f;
        // Pack Voltage (2 bytes) (unit = 0.1 V)
        batt_stat.pack_voltage = ((uint16_t)msg.buf[2] << 8 | msg.buf[3]) / 10.0f;
        // Pack State Of Charge (1 byte) (unit = 1%)
        batt_stat.pack_SOC = (msg.buf[4]) / 2.0f;
        // Pack High Teperature (1 byte) (unit = 1 deg C)
        batt_stat.pack_high_temp = msg.buf[5];  // TODO: Check units 0.1 or 1 C?
        // Pack Average Teperature (1 byte) (unit = 1 deg C)
        batt_stat.pack_avg_temp = msg.buf[6];
    }

    // message 3: bps status, lowest priority, 8 ms transmit cycle
    if (msg.id == (uint32_t)0x003) {
        parsed = 3;
        // Pack Relay Status (1 byte)
        // Discharge Relay
        bps_stat.discharge_enable = msg.buf[0] & 0x1;
        // Charge Relay
        bps_stat.charge_enable = (msg.buf[0] >> 1) & 0x1;
        // Charger Safety
        bps_stat.charge_safety_enable = (msg.buf[0] >> 2) & 0x1;
        // Malfunction Indicator
        bps_stat.malfunction = (msg.buf[0] >> 3) & 0x1;
        // Multi-Purpose Output Status
        bps_stat.multi_purpose_out_enable = (msg.buf[0] >> 4) & 0x1;
        // Always-On Signal Status
        bps_stat.always_on_signal_status = (msg.buf[0] >> 5) & 0x1;
        // Is-Ready Signal Status
        bps_stat.ready_signal_status = (msg.buf[0] >> 6) & 0x1;
        // Is-Charging Signal Status
        bps_stat.charge_signal_status = (msg.buf[0] >> 7) & 0x1;
        // Pack Charge Current Limit (2 bytes) (unit = 1 A)
        bps_stat.pack_charge_limit = (uint16_t)msg.buf[1] << 8 | msg.buf[2];
        // Pack Discharge Current Limit (2 bytes) (unit=1 A)
        bps_stat.pack_discharge_limit = (uint16_t)msg.buf[3] << 8 | msg.buf[4];
        // Current Limits Status (2 bytes)
        // TODO: break out current_limit_status into bools, interpret with parse function
        bps_stat.current_limit_status = (uint16_t)msg.buf[5] << 8 | msg.buf[6];
    }
    return parsed;
}

void BPS::print() const {
    Serial.println("Battery Status:");
    Serial.print("Pack Current: ");
    Serial.print(batt_stat.pack_current, DEC);
    Serial.println(" A");
    Serial.print("Pack Voltage: ");
    Serial.print(batt_stat.pack_voltage, DEC);  // in 0.1 V
    Serial.println(" V");
    Serial.print("Pack SOC: ");
    Serial.print(batt_stat.pack_SOC, DEC);
    Serial.println(" %");
    Serial.print("Pack High Temperature: ");
    Serial.print(batt_stat.pack_high_temp, DEC);
    Serial.println(" deg C");
    Serial.print("Pack Average Temperature: ");
    Serial.print(batt_stat.pack_avg_temp, DEC);
    Serial.println(" deg C\n");

    Serial.println("BPS Status:");
    Serial.print("Discharge Relay: ");
    printONOFF(bps_stat.discharge_enable);
    Serial.print("Charge Relay: ");
    printONOFF(bps_stat.charge_enable);
    Serial.print("Charger Safety: ");
    printONOFF(bps_stat.charge_safety_enable);
    Serial.print("Malfunction Indicator: ");
    printONOFF(bps_stat.malfunction);
    Serial.print("Multi-purpose Output: ");
    printONOFF(bps_stat.multi_purpose_out_enable);
    Serial.print("Always-On Signal: ");
    printONOFF(bps_stat.always_on_signal_status);
    Serial.print("Is-Ready Signal: ");
    printONOFF(bps_stat.ready_signal_status);
    Serial.print("Is-Charging Signal: ");
    printONOFF(bps_stat.charge_signal_status);
    Serial.print("Pack Charge Current Limit: ");
    Serial.print(bps_stat.pack_charge_limit, DEC);
    Serial.println(" A");
    Serial.print("Pack Discharge Current Limit: ");
    Serial.print(bps_stat.pack_discharge_limit, DEC);
    Serial.println(" A");
    // each bit of current_limit_status corresponds to reason for current limit change
    // TODO: break out current_limit_status into bools, interpret with parse function
    Serial.print("Pack Discharge Current Limit Status: ");
    Serial.println(bps_stat.current_limit_status, HEX);
    Serial.println();

    // TODO: instead of printing all errors ON/OFF, only print ON errors?
    Serial.println("BPS Errors:");
    Serial.print("Internal Comm Fault (P0A1F): ");
    printONOFF(errors.P0A1F);
    Serial.print("Internal Conversion Fault (P0A00): ");
    printONOFF(errors.P0A00);
    Serial.print("Weak Cell Fault (P0A80): ");
    printONOFF(errors.P0A80);
    Serial.print("Low Cell Voltage Fault (P0A80): ");
    printONOFF(errors.P0AFA);
    Serial.print("Comm Fault? (U0100): ");
    printONOFF(errors.U0100);
    Serial.print("Open Wiring Fault (P0A04): ");
    printONOFF(errors.P0A04);
    Serial.print("Current Sensor Fault (P0AC0): ");
    printONOFF(errors.P0AC0);
    Serial.print("Pack Voltage Sensor Fault (P0A01): ");
    printONOFF(errors.P0A01);
    Serial.print("Weak Pack Fault (P0A02): ");
    printONOFF(errors.P0A02);
    Serial.print("Voltage Redundancy Fault (P0A03): ");
    printONOFF(errors.P0A03);
    Serial.print("Fan Monitor Fault (P0A81): ");
    printONOFF(errors.P0A81);
    Serial.print("Thermistor Fault (P0A9C): ");
    printONOFF(errors.P0A9C);
    Serial.print("Always-On Supply Fault (P0560): ");
    printONOFF(errors.P0560);
    Serial.print("High Voltage Isolation Fault (P0AA6): ");
    printONOFF(errors.P0AA6);
    Serial.print("12 V Power Supply Fault (P0A05): ");
    printONOFF(errors.P0A05);
    Serial.print("Charge Limit Enforcement Fault (P0A06): ");
    printONOFF(errors.P0A06);
    Serial.print("Discharge Limit Enforcement Fault (P0A07): ");
    printONOFF(errors.P0A07);
    Serial.print("Charger Safety Relay Fault (P0A08): ");
    printONOFF(errors.P0A08);
    Serial.print("Internal Memory Fault (P0A09): ");
    printONOFF(errors.P0A09);
    Serial.print("Internal Thermistor Fault (P0A0A): ");
    printONOFF(errors.P0A0A);
    Serial.print("Internal Logic Fault (P0A0B): ");
    printONOFF(errors.P0A0B);
}

// prints ON if sig is true, OFF if sig is false
void BPS::printONOFF(bool sig) const { sig ? Serial.println("ON") : Serial.println("OFF"); }
