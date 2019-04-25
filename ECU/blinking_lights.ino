enum state_t{null = 0, left_turn, right_turn, hazards};
state_t state = null; 
const int left_pin = 13;
const int right_pin = 14;
const int buttonPin = 23;
uint32_t interval = 500;

void setup() {
  pinMode(left_pin, OUTPUT);
  pinMode(right_pin, OUTPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
}
byte c = 0;
int buttonState = LOW;
void loop() {
  buttonState = analogRead(buttonPin);
  lights_handler();{
    c = buttonState;
    switch(c){
      case(0-100):
        state = left_turn;
        break;
      case(900-1000):
        state = right_turn;
        break;
      case(101-899):
        state = hazards;
        break;
      default:
        state = null;
        break;
    }
  } 
}
 
int lights_handler() {
  static uint32_t previousMillis = 0;
  uint32_t currentMillis = millis();
  static bool flash = false;
  if ((currentMillis - previousMillis) >= interval){
    flash = !flash;
    previousMillis = millis();
  }
  switch(state){
    case(null):
        digitalWrite(left_pin, LOW);
        digitalWrite(right_pin, LOW);
        currentMillis = 0;
        previousMillis = 0;
        flash = false;
      break;
    case(left_turn):
        digitalWrite(left_pin, flash);
        digitalWrite(right_pin, LOW);
      break;
    case(right_turn):
        digitalWrite(right_pin, flash);
        digitalWrite(left_pin, LOW);
      break;
    case(hazards):
      digitalWrite(right_pin, flash);
      digitalWrite(left_pin, flash);
      break;
    default:
      digitalWrite(right_pin, LOW);
      digitalWrite(left_pin, LOW);
  }
  return 0;
}
