#include "bps.h"
#include <FlexCAN.h>
#include <kinetis_flexcan.h>
#include <cstdlib>
#include <string>
#include "pindef.h"

//TODO find address
BPS::BPS(uint8_t addr = 0x00){
  id = addr;

  batt_stat.pack_current=0;
  batt_stat.pack_voltage=0;
  batt_stat.pack_SOC=0;
  batt_stat.pack_high_temp=0;
  batt_stat.pack_avg_temp=0;

  bps_stat.discharge_enable=false;
  bps_stat.charge_enable=false;
  bps_stat.charge_safety_enable=false;
  bps_stat.malfunction=false;
  bps_stat.multi_purpose_out_enable=false;
  bps_stat.always_on_signal_status=false;
  bps_stat.ready_signal_status=false;
  bps_stat.charge_signal_status=false;
  bps_stat.pack_charge_limit=0;
  bps_stat.pack_discharge_limit=0;
  bps_stat.current_limit_status=0;

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

uint8_t BPS::bps_parse(const CAN_message_t &msg){
  uint8_t parsed = 0;

  //message id = uint32_t
  //message buf = uint8_t[8]
  
  //message 1: error codes, highest priority, 24 ms transmit cycle
  if (msg.id == (uint32_t)0x001 + id){
    parsed=1;
    
  }
  //message 2: battery status, middle priority, 16 ms transmit cycle
  if (msg.id == (uint32_t)0x002 + id){
    parsed=1;
    
  }

  //message 3: bps status, lowest priority, 8 ms transmit cycle
  if (msg.id == (uint32_t)0x003 + id){
    parsed=1;
    
  }
}
