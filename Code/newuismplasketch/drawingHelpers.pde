int thickStroke = 2;

//Data Mapping
float[] mappedFlArr(float[] flArr) { //Map wav values to fit the ui screen
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 148, 428);
  }
  return temp;
}

void colorControl(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED){
    int colorDraw = source.getValueI();
    //Finish adding color control code
  }
}

float[] mapEnv(float[] env) { //Map envelope values to fit the ui screen
  float totalTime = env[0]+env[1]+env[2];
  float attackTime = map(env[0], 0.0, totalTime, 0, camwidth);
  float sustainTime = map(env[1], 0.0, totalTime, 0, camwidth);
  float releaseTime = map(env[2], 0.0, totalTime, 0, camwidth);
  return new float[]{attackTime, sustainTime, releaseTime};
}

//Draw Functions
void drawScreen() { //draw blank screen
  fill(200);
  rect(420, 120, 670, 325);
}


void drawWav(float[] wavArr) { //takes wav arr draws it
  stroke(225, 0, 0);
  strokeWeight(thickStroke);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+430, wav[i], i+431, wav[i+1]);
  }
}

void drawExtract(float[] wavArr) { //takes wav arr draws it
  stroke(225, 0, 0);
  strokeWeight(thickStroke);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+430, wav[i], i+431, wav[i+1]);
  }
}

void drawWav(float[] wavArr, int r, int g, int b) { //takes wav arr draws it
  stroke(r, g, b);
  strokeWeight(thickStroke);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+430, wav[i], i+431, wav[i+1]);
  }
}

void drawEnv(float[] envArr) { //takes env arr draws it
  stroke(225, 0, 0);
  strokeWeight(thickStroke);
  float[] env = mapEnv(envArr);
  line(430, 448, 430+env[0], 300);
  line(430+env[0], 300, 430+env[0]+env[1], 300);
  line(430+env[0]+env[1], 300, 430+camwidth, 448);
}
