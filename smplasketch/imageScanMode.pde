PImage imageMode;
PitchDetector roughMatinee = new PitchDetector(this, 0.0);

void initImgFromFile(String imgName){
  imageMode = loadImage(imgName);
  imageMode.resize(640,480);
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

void find440(AudioSample s){
  roughMatinee.input(s);
  println(roughMatinee.analyze());
}
