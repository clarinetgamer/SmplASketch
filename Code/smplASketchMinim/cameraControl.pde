import processing.video.*;

Capture cam;

void searchForCamera() { //Camera intialization function
  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    int setcamIndex = -1;
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
      if (cameras[i].contains("C270")) {
        setcamIndex = i;
      }
    }
    if (setcamIndex != -1 || test) {//allows the program to run even when device is not connected while testing
      if (test) {
        cam = new Capture(this, 850, 900, "pipeline:avfvideosrc device-index=0", 30);
      } else {
        cam = new Capture(this, 850, 900, "pipeline:avfvideosrc device-index="+setcamIndex, 30);
      }
      cam.start();
    } else {
      //if cam is not connected and is not in test mode turn off program
      wait(5000);
      exit();
    }
  }
}

void takePicture(String imageName) { //Uses camera to take picture and save to code folder
  if (cam.available() == true) {
    cam.read();
  }
  cam.save(imageName+".jpg");
}

void wavSnap() { //Captures photo for save slot 1
  takePicture("wav_image");
  wavImg = loadImage("wav_image.jpg");
  clearWav = false;
  wavSlot.setText("In Use");
}

void lfoSnap() { //Captures photo for save slot 2
  takePicture("lfo_image");
  lfoImg = loadImage("lfo_image.jpg");
  clearLFO = false;
  LFOSlot.setText("In Use");
}
