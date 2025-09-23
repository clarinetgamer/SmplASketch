import java.util.Map;
import processing.sound.*;
import g4p_controls.*;

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
  //noLoop();//turns off infinite loop of draw()
}

void draw() {
  background(143, 3, 3);
  checkMode();
}

void keyPressed() {
  if (key == 'w') {
    wavSnap();
    println("wavSnap");
  } else if (key == 'e') {
    envSnap();
    println("envSnap");
  } else if (key == '[') {
    decEnvMult();
    println("decEnv");
  } else if (key == ']') {
    incEnvMult();
    println("incEnv");
  } else if (key == '-') {
    decWavMult();
    println("decWav");
  } else if (key == '=') {
    incWavMult();
    println("incWav");
  } else if (key == 's') {
    smpl();
    println("smpl");
  } else if (key == 'r') {
    resetWav();
    println("resetWav");
  } else if (key == 't') {
    resetEnv();
    println("resetEnv");
  }
}
