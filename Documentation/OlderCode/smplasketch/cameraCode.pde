import processing.video.*; //<>//

Capture cam;


void searchForCamera() {
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
    if (setcamIndex != -1 || test) {//allows the program to run eve when device is not connected while testing
      if (test) {
        cam = new Capture(this, 850, 900, "pipeline:avfvideosrc device-index=0", 30);
      } else {
        cam = new Capture(this, 850, 900, "pipeline:avfvideosrc device-index="+setcamIndex, 30);
      }
      cam.start();
    } else {
      //display no camera connected dialouge
      wait(5000);
      exit();
    }
  }
}

void takePicture(String imageName) {
  //delay(1000);
  if (cam.available() == true) {
    cam.read();
  }
  cam.save(imageName+".jpg");
  //image(cam, 0, 0);
}
