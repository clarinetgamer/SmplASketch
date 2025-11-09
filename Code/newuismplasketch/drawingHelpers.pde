int thickStroke = 2;

//Data Mapping
float[] mappedFlArr(float[] flArr) { //Map wav values to fit the ui screen
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 148, 428);
  }
  return temp;
}

int[][] drawColor = {{225, 0, 0}, {225, 0, 0}, {225, 0, 0}};
int screenColorNum = 200;

void setColor(int index, int r, int g, int b) {
  drawColor[index][0] = r;
  drawColor[index][1] = g;
  drawColor[index][2] = b;
}

//Save 4 l8r
//int linecounter=0;
//void drawGreenLine() {
//  stroke(0, 255, 0);
//  line(432+linecounter, 128, 432+linecounter, 448);
//  wait(10);
//  linecounter++;
//  if (linecounter >680) linecounter=0;
//}

void colorControl(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    int colorDraw = source.getValueI();
    if (colorDraw == 0) {
      setColor(index, 255, 0, 0); //red
    } else if (colorDraw == 1) {
      setColor(index, 0, 255, 0); //green
    } else if (colorDraw == 2) {
      setColor(index, 0, 0, 255); //blue
    } else if (colorDraw == 3) {
      setColor(index, 255, 0, 255); //pink
    } else if (colorDraw == 4) {
      setColor(index, 102, 45, 145); //purple
    } else if (colorDraw == 5) {
      setColor(index, 255, 255, 0); //yellow
    } else if (colorDraw == 6) {
      setColor(index, 241, 90, 36); //orange
    } else if (colorDraw == 7) {
      setColor(index, 96, 56, 19); //brown
    } else if (colorDraw == 8) {
      setColor(index, 0, 0, 0); //black
    } else if (colorDraw == 9) {
      setColor(index, 255, 255, 255); //white
    }
  }
}

void screenColorControl(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED) {
    int colorDraw = source.getValueI();
    if (colorDraw == 0) {
      screenColorNum = 255; //white
    } else if (colorDraw == 1) {
      screenColorNum = 200; //light grey
    } else if (colorDraw == 2) {
      screenColorNum = 102; //dark grey
    } else if (colorDraw == 3) {
      screenColorNum = 0; //black
    }
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
  fill(screenColorNum);
  rect(420, 120, 670, 325);
}


void drawWav(float[] wavArr) { //takes wav arr draws it
  stroke(drawColor[0][0], drawColor[0][1], drawColor[0][2]);
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
  stroke(drawColor[1][0], drawColor[1][1], drawColor[1][2]);
  strokeWeight(thickStroke);
  float[] env = mapEnv(envArr);
  line(430, 448, 430+env[0], 300);
  line(430+env[0], 300, 430+env[0]+env[1], 300);
  line(430+env[0]+env[1], 300, 430+camwidth, 448);
}

void setAdditionSchemes(){
  dropListRed.setLocalColor(2, color(0,0,0));
  dropListBlue.setLocalColor(2, color(0,0,0));
  dropListGreen.setLocalColor(2, color(0,0,0));
  dropListYellow.setLocalColor(2, color(0,0,0));
  dropListPurple.setLocalColor(2, color(0,0,0));
  dropListOrange.setLocalColor(2, color(0,0,0));
  fileName.setLocalColorScheme(GCScheme.RED_SCHEME);
  fileName.setLocalColor(2, color(255,0,0)); 

}
