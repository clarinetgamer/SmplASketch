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

void drawEnv(float[] envArr) { //takes env arr draws it
  stroke(225, 0, 0);
  strokeWeight(2);
  float[] env = mapEnv(envArr);
  line(40, 340, 40+env[0], 200);
  line(40+env[0], 200, 40+env[0]+env[1], 200);
  line(40+env[0]+env[1], 200, 680, 340);
}
