#include "BPS.h"
#include "KLS.h"
#include "UI.h"
#include "console.h"
#include "constants.h"
#include "lights.h"
#include "pindef.h"



//To-Do: Error checking
//To-Do: Mission control GUI in Python, at the least make it prettier (use deserialize instead of serialize)

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while(!Serial);

  //TO-DO: Optimize doc sizes
  StaticJsonDocument<200> batt;
  StaticJsonDocument<200> bps;
  StaticJsonDocument<200> errors;
  StaticJsonDocument<200> kls;
  StaticJsonDocument<200> switches;
  

}

void loop() {
  // put your main code here, to run repeatedly:

  //KLS
  kls["rpm"] = status.rpm;
  kls["current"] = status.current;
  kls["voltage"] = status.voltage;
  kls["throttle"] = status.throttle;
  kls["controller_temp"] = status.controller_temp;
  kls["motor_temp"] = status.motor_temp;
  kls["command_status"] = status.command_status;
  kls["feedback_status"] = status.feedback_status;
  kls["count"] = status.errors.count;

  //KLS switches
  switches["hall_a"] = status.switches.hall_a;
  switches["hall_b"] = status.switches.hall_b;
  switches["hall_c"] = status.switches.hall_c;
  switches["brake"] = status.switches.brake;
  switches["backward"] = status.switches.backward;
  switches["forward"] = status.switches.forward;
  switches["foot"] = status.switches.foot;
  switches["boost"] = status.switches.boost;

  //Batter Pack
  batt["current"] = batt_stat.pack_current;
  batt["voltage"] = batt_stat.pack_voltage;
  batt["soc"] = batt_stat.pack_SOC;
  batt["high_temp"] = batt_stat.pack_high_temp;
  batt["avg_temp"] = batt_stat.pack_avg_temp;

  //BPS
  bps["discharge_enable"] = bps_stat.discharge_enable;
  bps["charge_enable"] = bps_stat.charge_enable;
  bps["bps_stat.charge_safety_enable"] = bps_stat.charge_safety_enable;
  bps["malfunction"] = bps_stat.malfunction;
  bps["mp_out_enable"] = bps_stat.multi_purpose_out_enable;
  bps["always_on"] = bps_stat.always_on_signal_status;
  bps["ready_signal"] = bps_stat.ready_signal_status;
  bps["charge_signal"] = bps_stat.charge_signal_status;
  bps["charge_limit"] = bps_stat.pack_charge_limit;
  bps["discharge_limit"] = bps.stat.pack_discharge_limit;
  bps["current_limit_status"] = bps_stat.current_limit_status;

  //BPS errors
  errors["P0A1F"] = errors.P0A1F;
  errors["P0A00"] = errors.P0A00;
  errors["P0A80"] = errors.P0A80;
  errors["P0AFA"] = errors.P0AFA;
  errors["U0100"] = errors.U0100;
  errors["P0A04"] = errors.P0A04;
  errors["P0AC0"] = errors.P0AC0;
  errors["P0A01"] = errors.P0A01;
  errors["P0A02"] = errors.P0A02;
  errors["P0A03"] = errors.P0A03;
  errors["P0A81"] = errors.P0A81;
  errors["P0A9C"] = errors.P0A9C;
  errors["P0560"] = errors.P0560;
  errors["P0AA6"] = errors.P0AA6;
  errors["P0A05"] = errors.P0A05;
  errors["P0A06"] = errors.P0A06;
  errors["P0A07"] = errors.P0A07;
  errors["P0A08"] = errors.P0A08;
  errors["P0A09"] = errors.P0A09;
  errors["P0A0A"] = errors.P0A0A;
  errors["P0A0B"] = errors.P0A0B; 
  
serializeJsonPretty(batt, Serial);
serializeJsonPretty(bps, Serial);
serializeJsonPretty(errors, Serial);
serializeJsonPretty(kls, Serial);
serializeJsonPretty(switches, Serial);

delay(500); //refresh every half second

  
}
