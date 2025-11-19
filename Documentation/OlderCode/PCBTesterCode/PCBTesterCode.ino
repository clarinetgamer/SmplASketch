int led = 40;     //pcb
int button = 30;  //pcb
int buttonState = HIGH;
int lastButtonState = HIGH;
bool on = false;

void setup() {
  Serial.begin(9600);
  pinMode(led, OUTPUT);
  pinMode(button, INPUT_PULLUP);
}

void loop() {
  if (digitalRead(button) == LOW) {
    on = !on;
    delay(200);
  }
  if (on == true) {
    digitalWrite(led, HIGH);
  } else {
    digitalWrite(led, LOW);
  }
  // checkButton();
  // if (buttonState == LOW && lastButtonState == HIGH) {
  //   digitalWrite(led, HIGH);
  //   delay(6000);
  //   digitalWrite(led, LOW);
  // }
}

void checkButton() {
  lastButtonState = buttonState;
  buttonState = digitalRead(button);
}
