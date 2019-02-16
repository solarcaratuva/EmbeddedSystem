
#define PIN_PWM_MOTOR_L_THROTTLE 35
#define PIN_PWM_MOTOR_L_REGEN    36
#define PIN_PWM_MOTOR_R_THROTTLE 37
#define PIN_PWM_MOTOR_R_REGEN    38

int brightness = 0;
int fadeAmount = 0;

void setup() {

  // configure GPIO for motor controller
  pinMode(PIN_PWM_MOTOR_R_THROTTLE, OUTPUT);
  pinMode(PIN_PWM_MOTOR_R_REGEN,    OUTPUT);
  pinMode(PIN_PWM_MOTOR_L_THROTTLE, OUTPUT);
  pinMode(PIN_PWM_MOTOR_L_REGEN,    OUTPUT);
  
  analogWriteResolution(14);

  // set output PWM frequency for motor controller
  analogWriteFrequency(PIN_PWM_MOTOR_R_THROTTLE, 32000);
  analogWriteFrequency(PIN_PWM_MOTOR_R_REGEN,    32000);
  analogWriteFrequency(PIN_PWM_MOTOR_L_THROTTLE, 32000);
  analogWriteFrequency(PIN_PWM_MOTOR_L_REGEN,    32000);

}

void loop() {

  // generate ramp wave, Period approx 16.384 seconds
  analogWrite(PIN_PWM_MOTOR_L_REGEN, brightness);
  brightness++;
  brightness &= ((1<<14)-1); // equiv: `brightness = (2^14) % brightness`; // bitmasking is faster but only works for powers of 2.
  delay(1);
}
