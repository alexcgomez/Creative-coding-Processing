/*
This is a sine-wave oscillator. The method .play() starts the oscillator. There
are several setters like .amp(), .freq(), .pan() and .add(). If you want to set all of them at
the same time use .set(float freq, float amp, float add, float pan)
*/

import processing.sound.*;

SinOsc wave;
//SqrOsc wave;
//TriOsc wave;
//SawOsc wave;

float freq=400;
float amp=0.5;

void setup() {
    size(640, 360);
    background(255);
    
    // Create and start the wave oscillator.
    wave = new SinOsc(this);
//    wave = new SqrOsc(this);
//    wave = new TriOsc(this);
//    wave = new SawOsc(this);
    
    //Start the wave oscillator. 
    wave.play();
}

void draw() {

  // Map mouseY from 0.0 to 1.0 for amplitude
  amp = map(mouseY, 0, height, 1.0, 0.0);
  wave.amp(amp);
  
  // Map mouseX from 80Hz to 1000Hz for frequency  
  freq = map(mouseX, 0, width, 80.0, 1000.0);
  wave.freq(freq);
  
}
