import java.util.Map;
import processing.sound.*;
import g4p_controls.*;

Sound s;

boolean test = true;
boolean calibMode = false;

//Camera Dimensions Setup
int[] sizeArr = {661, 480}; //fix width to match pi cam(mac cam is 640 480)
int camwidth = sizeArr[0];
int camheight = sizeArr[1];

public void setup() {
  size(1512, 850, JAVA2D);
  smooth(10);
  createGUI();
  bigtone_slider1.setShowTicks(false);//partofcreateGUI
  setAdditionSchemes();
  //Img processing setup
  modWavImg = createImage(camwidth, camheight, RGB); // Create image to write other data to
  modCalibImg = createImage(camwidth, camheight, RGB); // Create image to write other data to
  modEnvImg = createImage(camwidth, camheight, RGB); // Create env image to write other data to
  initImgFromFile("blank.jpg");
  searchForCamera();
  //clear cache
  clearCache();
  //Setup volume control
  s = new Sound(this);
  s.volume(0.2);
  //Setup Envelope Code
  envMenuStart();  
}

public void draw() {
  drawDarkMode();
  if(calibMode){
    calibMode();
  } else {
    checkMode();
  }
  setOnDotsVis();
}

void drawDarkMode() {
  background(102);
  noStroke();
  fill(51);
  rect(0, 0, 1512, 57);
  rect(0, 830, 1512, 57);
  fill(200);
  rect(420, 120, 670, 325);
}

//void drawLightMode() {
//  background(240);
//  noStroke();
//  fill(220);
//  rect(0, 0, 1512, 57);
//  rect(0, 830, 1512, 57);
//  fill(255);
//  rect(420, 120, 670, 325);
//}


void keyPressed() { //test true is for keyboard control test false is obscure ascii to talk to teensy
  if ((test == true && key == 'w')||(test == false && key == '€')) {
    wavSnap();
    println("wavSnap");
  } else if ((test == true && key == 'e')||(test == false && key == 'ƒ')) {
    envSnap();
    println("envSnap");
  } else if ((test == true && key == '[')||(test == false && key == '†')) {
    decEnvMult();
    println("decEnv");
  } else if ((test == true && key == ']')||(test == false && key == '‡')) {
    incEnvMult();
    println("incEnv");
  } else if ((test == true && key == '-')||(test == false && key == '‰')) {
    decWavMult();
    println("decWav");
  } else if ((test == true && key == '=')||(test == false && key == '°')) {
    incWavMult();
    println("incWav");
  } else if ((test == true && key == 's')||(test == false && key == 'Œ')) {
    smpl();
    println("smpl");
  } else if ((test == true && key == 'r')||(test == false && key == '™')) {
    resetWav();
    println("resetWav");
  } else if ((test == true && key == 't')||(test == false && key == '◊')) {
    resetLFO();
    println("resetEnv");
  } else if (key == (char)27) {//Escape key always exits program
    clearCache();
    println("Program Exit");
    exit();
  } else if (key == (char)32) {
    clearActiveSamples();
  }
}
