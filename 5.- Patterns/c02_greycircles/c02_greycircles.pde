
// Basat en l'exemple del llibre:
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

void setup()
{
    size(640,480);
}

void draw()
{
    background(0);
    for ( int i = 0; i < 1000; i++ ) {
        fill(random(255), 64);
        stroke(255,128);
        ellipse(random(width), random(height), 40, 40);
    }
}

