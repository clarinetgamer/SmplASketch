import g4p_controls.*; //<>//

float volume = 0.2;
float mode = 0.0; //0.0 is Wav Mode 1.0 is Env Mode 2.0 is IMG mode

void setup() {
  size(720, 466, JAVA2D);
  createGUI();
}

void draw() {
  background(143, 3, 3);
  float[] sin = genSinWav();
  float[] env = genBasicEnv();
  drawScreen();
  //drawWav(sin);
  drawEnv(env);
  drawScreenBox();
}

void drawScreen() {
  fill(255);
  stroke(0);
  strokeWeight(2);
  rect(40, 20, 640, 320);
}

void drawScreenBox() {
  stroke(0);
  strokeWeight(2);
  noFill(); //<>//
  rect(40, 20, 640, 320);
}

float[] mappedFlArr(float[] flArr) { //<>//
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 40, 320);
  }
  return temp;
}

float[] mapEnv(float[] env) {
  float totalTime = env[0]+env[1]+env[2];
  float attackTime = map(env[0], 0, totalTime, 0, 640);
  float sustainTime = map(env[0], 0, totalTime, 0, 640);
  float releaseTime = map(env[0], 0, totalTime, 0, 640);
  return new float[]{attackTime, sustainTime, releaseTime};
}

void drawWav(float[] wavArr) {
  stroke(225, 0, 0);
  strokeWeight(2);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+40, wav[i], i+41, wav[i+1]);
  }
}

void drawEnv(float[] envArr) {
  stroke(225, 0, 0);
  strokeWeight(2);
  float[] env = mapEnv(envArr);
  line(40, 340, 40+env[0], 200);
  line(40+env[0], 200, 40+env[0]+env[1], 200);
  line(40+env[0]+env[1], 200, 680, 340);
}

float[] genSinWav() {
  float[] sinewave = new float[640];

  for (int i = 0; i < 640; i++) {
    sinewave[i] = sin(TWO_PI*i/640);
  }
  return sinewave;
}

float[] genBasicEnv() {
  float attackTime = 0.1;
  float sustainTime = 0.5;
  float releaseTime = 0.4;
  return new float[]{attackTime, sustainTime, releaseTime};
}
