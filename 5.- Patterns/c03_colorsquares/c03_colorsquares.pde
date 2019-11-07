// Basat en l'exemple de llibre:
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */


void setup()
{
    size( 640, 480 );
    rectMode( CENTER );
    stroke(0);
}

void draw()
{
    background( 0 );
    for ( int i = 0; i < 1000; i++ ) {
        fill( 0, random( 255 ), random( 255 ), 64 );
        pushMatrix();
        translate( random( width ), random( height ) );
        rotate( radians( random( 360 ) ) );
        rect( 0, 0, 50, 50 );
        popMatrix();
    }
}

