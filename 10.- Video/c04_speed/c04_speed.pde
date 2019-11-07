

/* Exemple basat en el llibre: */
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Movie m;
boolean p = true;
float w;
float s;

void setup() {
    size(960, 540);
    m = new Movie(this, "UPC_960x540.mp4");
    m.loop();
    s = 1.0;

}

void draw() {
    image(m, 0, 0, width, height);

    fill(0);
    noStroke();
    rect(0, 0, w, 10);
    
    text("Speed: " + s, 20, 20);
}

void movieEvent(Movie m) {
    m.read();
    w = map(m.time(), 0, m.duration(), 0, width);
}

void mousePressed() {
    if (mouseY<10) {
        float x = map(mouseX, 0, width, 0, m.duration());
        m.jump(x);
    }
}

void keyPressed() {
    if ( key == ' ' ) {
        if ( p ) {
            m.pause();
            p = false;
        } else {
            m.play();
            p = true;
        }
    }
    if (key == CODED) {
        if (keyCode == LEFT) {
            s = 0.5*s;
        } else if (keyCode == RIGHT) {
            s = 2*s;
        }
        if ( s < 0.25 ) { 
            s = 0.25;
        } 
        else if ( s > 4 ) { 
            s = 4;
        }
        m.speed(s); 
    }
}
