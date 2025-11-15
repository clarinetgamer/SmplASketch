float volume = 0.2; //<>// //<>//
float wavMult = 1;
float envMult = 1;
float lfoMult = 1;
float lfoBound = 0.5;
float lfoRange = 1.5;
float smplLength;


// 0.9225-F# 0.978-G 1.04-G# 1.1-A 1.167-A# 1.235-B 1.31-C 1.386-C# 1.47-D 1.555-D# 1.65-E 1.745-F 1.845-F#
float[] samplerate = {0.9225, 0.978, 1.04, 1.1, 1.167, 1.235, 1.31, 1.386, 1.47, 1.555, 1.65, 1.745, 1.845};
String[] note = {"F#", "G", "G#", "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#"};
float[] oct = {0.25, 0.5, 1.0, 2.0, 4.0};
float fineAdjust = 0.0;
int srIndex = 6;
int octIndex = 2;

void playWav(AudioSample sample) { //takes in sample object and plays it
  sample.trigger();
  //sample.rate((samplerate[srIndex]+fineAdjust)*oct[octIndex]); //add pitch shift due to button input
  //sample.loop();
}

void playWav(AudioSample sample, float rate) { //takes in sample object and plays it
  //sample.rate(rate); //add pitch shift due to button input
  //sample.loop();
}


// Envelope Generation
//float[] getTimeVals() { //translate envImage processing code into values needed to play the envelope back
//  float[] timeVals = new float[3];
//  float[] splits = processEnvImage();
//  timeVals[0] = (splits[0]/100) * 0.45;
//  timeVals[1] = ((splits[1]-splits[0])/100) * 0.45;
//  timeVals[2] = ((100-splits[1])/100) * 0.45;
//  return timeVals;
//}

//void playEnv(AudioSample sample) { //takes in a sample object and using the variables plays an envelope
//  Env env = new Env(this);
//  float[] time = getTimeVals();
//  float attackTime = time[0];
//  float sustainTime = time[1];
//  float releaseTime = time[2];
//  env.play(sample, attackTime * envMult, sustainTime * envMult, 1.0, releaseTime);
//}

void playDemoEnv(AudioSample sample) { //takes in a demo object and using the variables plays a demo envelope
  //Env env = new Env(this);
  //float[] time = resetEnv;
  //float attackTime = time[0];
  //float sustainTime = time[1];
  //float releaseTime = time[2];
  //env.play(sample, attackTime * envMult, sustainTime * envMult, 1.0, releaseTime * envMult);
}

void playSliderEnv(AudioSample sample) { //takes in a demo object and using the variables plays a demo envelope
  //Env env = new Env(this);
  //float[] time = sliderVals;
  //float attackTime = map(time[0], 0, 10, 0., 1.);
  //float sustainTime = map(time[1], 0, 10, 0., 1.);
  //float releaseTime = map(time[2], 0, 10, 0., 1.);
  //env.play(sample, attackTime * envMult, sustainTime * envMult, 1.0, releaseTime * envMult);
}
