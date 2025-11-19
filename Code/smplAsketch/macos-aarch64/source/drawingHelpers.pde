int thickStroke = 2;
boolean showPlayLine = false;
int[][] drawColor = {{225, 0, 0}, {0, 0, 225}, {102, 45, 145}};
int screenColorNum = 200;

//Color control
void setColor(int index, int r, int g, int b) {
  drawColor[index][0] = r;
  drawColor[index][1] = g;
  drawColor[index][2] = b;
}

//Basic draw Functions
void drawScreen() { //draw blank screen
  fill(screenColorNum);
  rect(420, 120, 670, 325);
}

void drawDarkMode() {
  background(102);
  noStroke();
  fill(51);
  rect(0, 0, 1512, 57);
  rect(0, 830, 1512, 57);
  fill(200);
  rect(420, 120, 670, 325);
  fill(255, 255, 150);
  rect(246, 467, 57, 57);
}



//Data Mapping
float[] mappedFlArr(float[] flArr) { //Map wav values to fit the ui screen
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 148, 428);
  }
  return temp;
}

float[] mappedLFOArr(float[] flArr) { //Map wav values to fit the ui screen
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 208, 368);
  }
  return temp;
}

float[] mapEnv(float[] env) { //Map envelope values to fit the ui screen
  float totalTime = env[0]+env[1]+env[2]+env[3];
  float ratio = totalTime/4.0;
  float attackTime = map(env[0], 0.0, totalTime, 0, (int)camwidth*ratio);
  float decayTime = map(env[1], 0.0, totalTime, 0, (int)camwidth*ratio);
  float sustainTime = map(env[2], 0.0, totalTime, 0, (int)camwidth*ratio);
  float releaseTime = map(env[3], 0.0, totalTime, 0, (int)camwidth*ratio);
  return new float[]{attackTime, decayTime, sustainTime, releaseTime, ratio};
}

//Draw hlper for calibration extraction
void drawExtract(float[] wavArr) { //takes wav arr draws it
  stroke(225, 0, 0);
  strokeWeight(thickStroke);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+430, wav[i], i+431, wav[i+1]);
  }
}
//Draw helpers functions for the 3 main sound data types
void drawWav(float[] wavArr, int r, int g, int b) { //takes wav arr draws it and takes color parameters
  stroke(r, g, b);
  strokeWeight(thickStroke);
  float[] wav = mappedFlArr(wavArr);
  for (int i = 0; i < wav.length-1; i ++) {
    line(i+430, wav[i], i+431, wav[i+1]);
  }
}

void drawWav(float[] wavArr) { //takes wav arr draws it as set wav color
  drawWav(wavArr, drawColor[0][0], drawColor[0][1], drawColor[0][2]);
}

void drawEnv(float[] envArr) { //takes env arr draws it
  stroke(drawColor[1][0], drawColor[1][1], drawColor[1][2]);
  strokeWeight(thickStroke);
  float[] env = mapEnv(envArr);
  line(430, 448, 430+env[0], 200);
  line(430+env[0], 200, 430+env[0]+env[1], 300);
  line(430+env[0]+env[1], 300, 430+env[0]+env[1]+env[2], 300);
  line(430+env[0]+env[1]+env[2], 300, 430+(int)(camwidth*env[4]), 448);
}

void photoEnvMode(float[] envArr) {
  stroke(0,0,0);
  strokeWeight(thickStroke);
  float[] env = mapEnv(envArr);
  line(430, 448, 430+env[0], 200);
  line(430+env[0], 200, 430+env[0]+env[1], 300);
  line(430+env[0]+env[1], 300, 430+env[0]+env[1]+env[2], 300);
  line(430+env[0]+env[1]+env[2], 300, 430+(int)(camwidth*env[4]), 448);
}

void drawLFO(float[] lfoArr) { //takes lfo arr draws it
  stroke(drawColor[2][0], drawColor[2][1], drawColor[2][2]);
  strokeWeight(thickStroke);
  float[] lfo = mappedLFOArr(lfoArr);
  if (lfoOn) {
    for (int i = 0; i < lfo.length-1; i ++) {
      line(i+430, lfo[i], i+431, lfo[i+1]);
    }
  } else {
    for (int i = 0; i < lfo.length-1; i ++) {
      line(i+430, 290, i+431, 290);
    }
  }
}

//Animation Drawing
float linecounter = 700;
void drawGreenLine() {
  stroke(0, 255, 0);
  line((int)432+linecounter, 128, (int)432+linecounter, 448);
  linecounter += (2.7*(1/envMult));
}

void playheadAnimation(){
if (showPlayLine && !noShow) {
    if (linecounter < 680) drawGreenLine();
  }
}

//GUI Drawing
void setAdditionSchemes() {
  dropListRed.setLocalColor(2, color(0, 0, 0));
  dropListBlue.setLocalColor(2, color(0, 0, 0));
  dropListGreen.setLocalColor(2, color(0, 0, 0));
  dropListYellow.setLocalColor(2, color(0, 0, 0));
  dropListPurple.setLocalColor(2, color(0, 0, 0));
  dropListOrange.setLocalColor(2, color(0, 0, 0));
  fileName.setLocalColorScheme(GCScheme.RED_SCHEME);
  fileName.setLocalColor(2, color(255, 0, 0));
  pitch.setLocalColor(2, color(0, 0, 0));
}

void setOnDotsVis() {
  redon.setVisible(photsynthesisDots[0]);
  blueon.setVisible(photsynthesisDots[1]);
  greenon.setVisible(photsynthesisDots[2]);
  yellowon.setVisible(photsynthesisDots[3]);
  purpleon.setVisible(photsynthesisDots[4]);
  orangeon.setVisible(photsynthesisDots[5]);
}
