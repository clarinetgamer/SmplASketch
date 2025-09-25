//Data Mapping
float[] mappedFlArr(float[] flArr) { //Map wav values to fit the ui screen
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 40, 320);
  }
  return temp;
}

float[] mapEnv(float[] env) { //Map envelope values to fit the ui screen
  float totalTime = env[0]+env[1]+env[2];
  float attackTime = map(env[0], 0.0, totalTime, 0, 640);
  float sustainTime = map(env[1], 0.0, totalTime, 0, 640);
  float releaseTime = map(env[2], 0.0, totalTime, 0, 640);
  return new float[]{attackTime, sustainTime, releaseTime};
}

//Draw Functions
void drawScreen() { //draw blank screen
  fill(255);
  stroke(0);
  strokeWeight(2);
  rect(40, 20, 640, 320);
}

void drawScreenBox() {//draw screen outline
  stroke(0);
  strokeWeight(2);
  noFill();
  rect(40, 20, 640, 320);
}


void drawWav(float[] wavArr) { //takes wav arr draws it
  stroke(225, 0, 0);
  strokeWeight(2);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+40, wav[i], i+41, wav[i+1]);
  }
}

void drawWav(float[] wavArr, int r, int g, int b) { //takes wav arr draws it
  stroke(r, g, b);
  strokeWeight(2);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+40, wav[i], i+41, wav[i+1]);
  }
}

void drawEnv(float[] envArr) { //takes env arr draws it
  stroke(225, 0, 0);
  strokeWeight(2);
  float[] env = mapEnv(envArr);
  line(40, 340, 40+env[0], 200);
  line(40+env[0], 200, 40+env[0]+env[1], 200);
  line(40+env[0]+env[1], 200, 680, 340);
}

void drawConnectionIcon(boolean bool) { //true for on false for off
  redCon.setVisible(!bool);
}
