int buttons[7] = { 28, 30, 31, 32, 33, 35, 37 };
bool buttonState[7] = { HIGH, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH };
bool lastButtonState[7] = { HIGH, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH };
int led = 36;



bool wav = false;
bool env = false;

/*
Pin 28 is Snap 0 
Pin 30 is Reset 1 
Pin 32 is Smpl 3 
Pin 31 is DownInc 2 
Pin 35 is Wav 5
Pin 37 is Env 6
Pin 33 is UpInc 4
*/

void setup() {
  Serial.begin(9600);
  for (int i = 0; i < 7; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
  }
  pinMode(led, OUTPUT);
}

void loop() {
  setWav();
  setEnv();
  checkButtons();
  if(buttonState[0] == LOW && lastButtonState[0] == HIGH) {
    snap();
  }
  if(buttonState[1] == LOW && lastButtonState[1] == HIGH) {
    clear();
  }
  if(buttonState[3] == LOW && lastButtonState[3] == HIGH) {
    Keyboard.press(KEY_LEFT_ALT);//smpl
    Keyboard.press('Q');
    Keyboard.press('O');
    delay(100);
    Keyboard.release('O');//smpl
    Keyboard.release('Q');
    Keyboard.release(KEY_LEFT_ALT);
  }
  if(buttonState[2] == LOW && lastButtonState[2] == HIGH) {
    downInc();
  }
  if(buttonState[4] == LOW && lastButtonState[4] == HIGH) {
    upInc();
  }
}

void checkButtons() {
  for (int i = 0; i < 7; i++) {
    lastButtonState[i] = buttonState[i];
    buttonState[i] = digitalRead(buttons[i]);
  }
}

void snap(){
  digitalWrite(led, HIGH);
  delay(500);
  if (wav == true) {
    Keyboard.press(KEY_LEFT_ALT);//wavsnap
    Keyboard.press(KEY_LEFT_SHIFT);
    Keyboard.press('2');
    delay(100);
    wav = false;
    Keyboard.release(KEY_LEFT_ALT);
    Keyboard.release(KEY_LEFT_SHIFT);
    Keyboard.release('2');
  } else if (env == true) {
    Keyboard.press(KEY_LEFT_ALT);//envsnap
    Keyboard.press('f');
    delay(100);
    env = false;
    Keyboard.release('f');
    Keyboard.release(KEY_LEFT_ALT);
  }
  delay(500);
  digitalWrite(led, LOW);
}

void clear(){
  if (wav == true) {
    Keyboard.press(KEY_LEFT_ALT);//reset wav
    Keyboard.press('2');
    delay(100);
    wav = false;
    Keyboard.release('2');
    Keyboard.release(KEY_LEFT_ALT);
  } else if (env == true) {
    Keyboard.press('¤'); //reset env
    delay(100);
    env = false;
    Keyboard.release('¤');
  }
  
}

void upInc(){
  if (wav == true) {
    Keyboard.press('Š');//inc wav
    delay(100);
    wav = false;
    Keyboard.release('Š');
  } else if (env == true) {
    Keyboard.press('‡');//inc env
    delay(100);
    env = false;
    Keyboard.release('‡');
  }
  
}

void downInc(){
  if (wav == true) {
    Keyboard.press('‰');//dec wav
    delay(100);
    wav = false;
    Keyboard.release('‰');
  } else if (env == true) {
    Keyboard.press('†');//dec env
    delay(100);
    env = false;
    Keyboard.release('†');
  }
  
}

void setWav() {
  if (buttonState[5] == LOW && lastButtonState[5] == HIGH) {
    wav = true;
    env = false;
      Serial.print("wav");

  }
}

void setEnv() {
  if (buttonState[6] == LOW && lastButtonState[6] == HIGH) {
    env = true;
    wav = false;
    Serial.print("env");
  }
}
