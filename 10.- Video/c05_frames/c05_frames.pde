

/* Exemple basat en el llibre: */
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
/* i en l'exemple de la llibreria Video: */
/**
 * Frames 
 * by Andres Colubri. 
 * 
 * Moves through the video one frame at the time by using the
 * arrow keys. It estimates the frame counts using the framerate
 * of the movie file, so it might not be exact in some cases.
 */


import processing.video.*;

Movie m;
int newFrame = 0;

void setup() {
    size(960, 540);
    m = new Movie(this, "UPC_960x540.mp4");

    // Pausing the video at the first frame. 
    m.play();
    m.jump(0);
    m.pause();
}

void draw() {
    image(m, 0, 0, width, height);

    fill(0);
    text("Frames: " + getFrame() + " / " + (getLength() - 1), 20, 20);
}

void movieEvent(Movie m) {
    m.read();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      if (0 < newFrame) newFrame--; 
    } else if (keyCode == RIGHT) {
      if (newFrame < getLength() - 1) newFrame++;
    } else if (keyCode == UP) {
      if (newFrame < getLength() - 1) newFrame += 10;
    } else if (keyCode == DOWN) {
      if (0 < newFrame) newFrame -= 10; 
    }
  } 
  setFrame(newFrame);  
}

int getLength() {
  return int(m.duration() * m.frameRate);
}

int getFrame() {    
  return ceil(m.time() * 30) - 1;
}

void setFrame(int n) {
  m.play();
    
  // The duration of a single frame:
  float frameDuration = 1.0 / m.frameRate;
    
  // We move to the middle of the frame by adding 0.5:
  float where = (n + 0.5) * frameDuration; 
    
  // Taking into account border effects:
  float diff = m.duration() - where;
  if (diff < 0) {
    where += diff - 0.25 * frameDuration;
  }
    
  m.jump(where);
  m.pause();  
}  
