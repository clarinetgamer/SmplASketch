import java.util.Map;
import processing.sound.*;
import g4p_controls.*;

boolean test = true;

//Camera Dimensions Setup
int[] sizeArr = {640, 480}; //fix width to match pi cam(mac cam is 640 480)
int camwidth = sizeArr[0];
int camheight = sizeArr[1];

void setup() {
  //GUI Setup
  size(720, 466, JAVA2D);
  createGUI();
  //Img processing setup
  modWavImg = createImage(camwidth, camheight, RGB); // Create image to write other data to
  modEnvImg = createImage(camwidth, camheight, RGB); // Create env image to write other data to
  searchForCamera();
  //clear cache
  clearCache();
}

void draw() {
  background(143, 3, 3);
  checkMode();
}

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
  } else if ((test == true && key == '=')||(test == false && key == 'Š')) {
    incWavMult();
    println("incWav");
  } else if ((test == true && key == 's')||(test == false && key == 'Œ')) {
    smpl();
    println("smpl");
  } else if ((test == true && key == 'r')||(test == false && key == '™')) {
    resetWav();
    println("resetWav");
  } else if ((test == true && key == 't')||(test == false && key == '¤')) {
    resetEnv();
    println("resetEnv");
  } else if (key == (char)27) {//Escape key always exits program
    clearCache();
    println("Program Exit");
    exit();
  } 
}
