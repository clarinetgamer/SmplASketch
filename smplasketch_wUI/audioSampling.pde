float wavMult = 1;

AudioSample createSample(float[] wav) { //create sample object from float array
  AudioSample sample = new AudioSample(this, wav, 200 * camwidth);
  return sample;
}

void playWav(AudioSample sample) { //takes in sample object and plays it
  sample.rate(0.7 * wavMult); //add pitch shift due to button input
  sample.loop();
}
