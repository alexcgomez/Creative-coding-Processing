

/* Exemple basat en el llibre: */
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

import processing.video.*;

Movie m;
float w;

void setup() {
    size(960, 540);
    m = new Movie(this, "UPC_960x540.mp4");
    m.loop();
}

void draw() {
    image(m, 0, 0, width, height);

    fill(0);
    noStroke();
    rect(0, 0, w, 10);
}

void movieEvent(Movie m) {
    m.read();
    w = map(m.time(), 0, m.duration(), 0, width);
}
