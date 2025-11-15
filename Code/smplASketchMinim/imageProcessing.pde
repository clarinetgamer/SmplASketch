PImage wavImg;
PImage lfoImg;
PImage modWavImg;
PImage modLFOImg;
PImage modCalibImg;

float threshold = 0.791;
float shift = 1.0;

float[] processImage(PImage img, PImage modImg, Boolean isWav) { //takes the image from the folder changes all red pixels to green and returns float array of drawn wave
  modImg.loadPixels(); //load display pixels
  img.loadPixels(); //load images pizels
  img = crop(img);
  img = threshed(img);
  img.save("newimg.jpg");
  float[] wav = new float[camwidth];

  for (int x = 0; x < camwidth; x++) {
    ArrayList<Integer> readBlackPix = new ArrayList<Integer>(); // create list to hold y values for a single x point
    for (int y = 0; y < camheight; y++) {
      int loc = x + y*camwidth; //calculate pixel location

      // Pull out the 3 color components from pixel
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Change red pixels to green to show that it was read
      if (r < 10 && b < 10 && g < 10) {
        r=0;
        b=0;
        g=255;
        readBlackPix.add(y); //add the y value to the list
      }

      // Change displayed pixel to represent coordinates counted
      modImg.pixels[loc] =  color(r, g, b);
    }
    if (readBlackPix.isEmpty()) {
      wav[x]=0;
    } else {
      int avg = findAvgY(readBlackPix);
      float avgFl;
      if (isWav) {
        avgFl = map(avg, camheight, 0, -1, 1);//very confused why it's flipped but that's how the numbers work out
      } else {
        avgFl = map(avg, 0, camheight, 0, 1000);//very confused why it's flipped but that's how the numbers work out
      }
      wav[x] = avgFl;
    }
  }
  modImg.updatePixels();
  return wav;
}

//Grab Proccessed Arrays
float[] processWavImage() { // feeds in wavImg names to image processing
  return processImage(wavImg, modWavImg, true);
}
float[] processCalibImage() { // feeds in wavImg names to image processing
  return processImage(camCap, modCalibImg, true);
}
float[] processLFOImage() { // feeds in wavImg names to image processing
  return processImage(lfoImg, modLFOImg, true);
}

//Modifier Functions
PImage crop(PImage img) { //crops image from camera to get just the slide
  PImage cropped = img.get((int)(160*shift), (int)(325*shift), camwidth, camheight);
  //cropped.save("cropped.jpg");
  return cropped;
}

PImage threshed(PImage img) { //crops image from camera to get just the slide
  img.filter(THRESHOLD, threshold);//filters line to black
  //cropped.save("cropped.jpg");
  return img;
}

//Helper functions
void thresholdMod(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED || event == GEvent.PRESSED || event == GEvent.VALUE_STEADY) {
    threshold = source.getValueF();
  }
}

void shiftMod(GCustomSlider source, GEvent event) {
  if (event == GEvent.RELEASED || event == GEvent.PRESSED || event == GEvent.VALUE_STEADY) {
    shift = source.getValueF();
  }
}

int findAvgY(ArrayList<Integer> list) { // find average of y pixels from drawing
  int avg = 0;
  int size = list.size();
  for (int i = 0; i < size; i ++) {
    avg += list.get(i);
  }
  avg = avg/size;
  return avg;
}
