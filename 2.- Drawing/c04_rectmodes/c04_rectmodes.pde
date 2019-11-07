// Example based on:
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

size(640,480);
background(255);

// grid
int step = 10;
stroke( 225 );
for ( int i = 0; i <= floor(width/step); i++ ) {
    line( i*step, 0, i*step, height );
}
for ( int i = 0; i <= floor(height/step); i++ ) {
    line( 0, i*step, width, i*step );
}
step = 100;
stroke( 125 );
for ( int i = 0; i <= floor(width/step); i++ ) {
    line( i*step, 0, i*step, height );
}
for ( int i = 0; i <= floor(height/step); i++ ) {
    line( 0, i*step, width, i*step );
}


stroke(0);

// rectangles (rounded corners)
fill(255, 255, 0);
rect(20, 20, 120, 120);
rect(180, 20, 120, 120, 20);
rect(340, 20, 120, 120, 20, 10, 40, 80);
rect(500, 40, 120, 80);


// rectangles (rectMode)
fill(255, 0, 255);
rectMode(CORNER);
rect(20, 200, 80, 100);
rectMode(CENTER);
rect(250, 250, 100, 100);
rectMode(CORNERS);
rect(360, 200, 460, 240);
rectMode(CORNER);
strokeWeight(10);
strokeJoin(BEVEL);  // MITER, ROUND, BEVEL  
rect(500, 200, 100, 60);
strokeWeight(1);

// quads 
fill(0, 255, 255);
quad(20, 340, 140, 340, 140, 380, 20, 460);
quad(220, 340, 300, 400, 240, 460, 200, 400);
quad(340, 340, 480, 400, 380, 460, 400, 400);
quad(500, 340, 620, 400, 540, 460, 600, 360);
