/*
This is a sound file player. 
*/


import processing.sound.*;

SoundFile soundfile;

void setup() {
    size(640,360);
    background(255);
    
    //Load a soundfile
    soundfile = new SoundFile(this, "Bach.aiff");

    // These methods return useful infos about the file
    println("SampleRate = " + soundfile.sampleRate() + " Hz");
    println("Channels = " + soundfile.channels());
    println("Samples = " + soundfile.frames() + " samples");
    println("Duration = " + nfc(soundfile.duration(),3) + " seconds");

    // Play the file in a loop
    soundfile.loop();
}      


void draw() {
  // Map mouseY from 0.2 to 2.0 for playback rate.
  soundfile.rate(map(mouseY, height, 0, 0.5, 2.0)); 
  
  // Map mouseY from 0.2 to 1.0 for amplitude  
  //soundfile.amp(map(mouseY, 0, height, 0.2, 1.0)); 
 
  // Map mouseX from -1.0 to 1.0 for left to right 
  //soundfile.pan(map(mouseX, 0, width, -1.0, 1.0));  
}
