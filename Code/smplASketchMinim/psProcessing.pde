PImage imageMode;
int[] freqArrPhotoMode = {0, 1, 2, 3, 4, 5};
boolean[] photsynthesisDots = {false, false, false, false, false, false};

ArrayList<float[]> processMultiImage(PImage img) {//Image processing function for multi color extraction
  img.loadPixels(); //load images pizels
  int imgWidth = img.width;
  int imgHeight = img.height;

  float[] redWav = new float[imgWidth];
  float[] greenWav = new float[imgWidth];
  float[] blueWav = new float[imgWidth];
  float[] yellowWav = new float[imgWidth];
  float[] purpleWav = new float[imgWidth];
  float[] orangeWav = new float[imgWidth];


  for (int x = 0; x < imgWidth; x++) {
    Integer redPix = 0;
    Integer greenPix = 0;
    Integer bluePix = 0;
    Integer yellowPix = 0;
    Integer purplePix = 0;
    Integer orangePix = 0;

    for (int y = 0; y < imgHeight; y++) {
      int loc = x + y*imgWidth; //calculate pixel location

      // Pull out the 3 color components from pixel
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      if (b < 100 && r > 200 && g > 90 && g < 200) {
        orangePix++;
      } else if (b < 220 && r > 200 && g > 200) {
        yellowPix++;
      } else if (b > 150 && r > 150 && g < 90) {
        purplePix++;
      } else if (b > r && b > g) {
        bluePix++;
      } else if (r > b && r > g) {
        redPix++;
      } else if (g > b && g > r) {
        greenPix++;
      }
    }
    redWav[x] = map(redPix, 0, imgHeight, 1, -1);
    greenWav[x] = map(greenPix, 0, imgHeight, 1, -1);
    blueWav[x] = map(bluePix, 0, imgHeight, 1, -1);
    yellowWav[x] = map(yellowPix, 0, imgHeight, 1, -1);
    purpleWav[x] = map(purplePix, 0, imgHeight, 1, -1);
    orangeWav[x] = map(orangePix, 0, imgHeight, 1, -1);
  }
  ArrayList<float[]> returnThis = new ArrayList<float[]>();
  returnThis.add(redWav);
  returnThis.add(greenWav);
  returnThis.add(blueWav);
  returnThis.add(yellowWav);
  returnThis.add(purpleWav);
  returnThis.add(orangeWav);

  return returnThis;
}
