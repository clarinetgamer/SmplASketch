PImage wavImg; //<>//
PImage envImg;
PImage modWavImg;
PImage modEnvImg;

int findAvgY(ArrayList<Integer> list) { // find average of y pixels from drawing
  int avg = 0;
  int size = list.size();
  for (int i = 0; i < size; i ++) {
    avg += list.get(i);
  }
  avg = avg/size;
  return avg;
}

PImage crop(PImage img){
PImage cropped = img.get(160, 250, 640, 480);
cropped.save("cropped.jpg");
return cropped;

}

float[] processImage(PImage img, PImage modImg, Boolean isWav) { //takes the image from the folder changes all red pixels to green and returns float array of drawn wave
  modImg.loadPixels(); //load display pixels
  img.loadPixels(); //load images pizels
  img = crop(img);
  //img.filter(POSTERIZE, 2);
  img.filter(THRESHOLD, 0.705);
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

float[] processWavImage() { // feeds in wavImg names to image processing
  return processImage(wavImg, modWavImg, true);
}

boolean isOnStraight(float f1, float f2, float f3) { //returns a value is surrounded by two like values
  int i1 = Math.round(f1);
  int i2 = Math.round(f2);
  int i3 = Math.round(f3);
  if ((i1 == i2) && (i2 == i3)) {
    return true;
  } else {
    return false;
  }
}

float[] processEnvImage() { //feeds in env imgs to processing function and returns splits
  float[] splits = new float[2];
  float[] scan = processImage(envImg, modEnvImg, false);
  int counter = 1;
  while (!isOnStraight(scan[counter-1], scan[counter], scan[counter+1])) {
    counter++;
  }
  splits[0] = map(counter, 0, camwidth, 0, 100);
  while (isOnStraight(scan[counter-1], scan[counter], scan[counter+1])) {
    counter++;
    if (counter == (scan.length - 1)) {
      break;
    }
  }
  splits[1] =  map(counter, 0, camwidth, 100, 0);
  return splits;
}

void printFlArr(float[] wav) { //Print float array
  for (int i = 0; i < width; i ++) {
    println(i + " " + wav[i]);
    delay(100);
  }
}
