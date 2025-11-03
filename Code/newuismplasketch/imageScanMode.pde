PImage imageMode; 

void initImgFromFile(String imgName) {
  imageMode = loadImage(imgName);
  imageMode.resize(camwidth, camheight);
}

ArrayList<float[]> processMultiImage(PImage img) {
  img.loadPixels(); //load images pizels
  int imgWidth = img.width;
  int imgHeight = img.height;

  float[] redWav = new float[imgWidth];
  float[] greenWav = new float[imgWidth];
  float[] blueWav = new float[imgWidth];

  for (int x = 0; x < imgWidth; x++) {
    Integer redPix = 0;
    Integer greenPix = 0;
    Integer bluePix = 0;

    for (int y = 0; y < imgHeight; y++) {
      int loc = x + y*imgWidth; //calculate pixel location

      // Pull out the 3 color components from pixel
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Change red pixels to green to show that it was read
      if (g >= b && g >= r) {
        greenPix++;
      } else if (b >= r && b >= g) {
        bluePix++;
      } else if (r >= b && r >= g) {
        redPix++;
      }
    }
    redWav[x] = map(redPix, 0, imgHeight, 1, -1);
    greenWav[x] = map(greenPix, 0, imgHeight, 1, -1);
    blueWav[x] = map(bluePix, 0, imgHeight, 1, -1);
  }
  ArrayList<float[]> returnThis = new ArrayList<float[]>();
  returnThis.add(redWav);
  returnThis.add(greenWav);
  returnThis.add(blueWav);

  return returnThis;
}

void wait(int time) {
  int start = millis();
  while (millis() <= start+time) {
  }
}

//come back to this later it kinda works but ultimately unimplemented with this version/ui
//float adjacent440(AudioSample sample) {
//  playWav(sample);
//  PitchDetector roughMatinee = new PitchDetector(this, 0.8);
//  roughMatinee.input(sample);
//  float[] pitchAndConfidence = new float[2];
//  wait(300);
//  float pitch = roughMatinee.analyze(pitchAndConfidence);
//  wait(300);
//  while (pitchAndConfidence[1] < 0 && pitchAndConfidence[0] != 0.0) {
//    pitch = roughMatinee.analyze(pitchAndConfidence);
//    wait(10);
//  }
//  float ogPitch = pitch;
//  print(ogPitch);
//  float rateAdjust = (440.0 / ogPitch)*0.7;
//  playWav(sample, rateAdjust);
//  wait(300);
//  pitch = roughMatinee.analyze(pitchAndConfidence);
//  wait(300);
//  while (pitchAndConfidence[1] < 0 || pitchAndConfidence[0] <= ogPitch) {
//    playWav(sample, rateAdjust);
//    wait(300);
//    pitch = roughMatinee.analyze(pitchAndConfidence);
//    wait(300);
//  }
//  println(pitch);
//  return rateAdjust;
//}
