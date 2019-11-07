// Based on examples from the book:
/** 
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
/*
Used fonts: Ostrich Sans and Junction, both open source fonts by The League of Moveable Type. 
You can download them at http://www.theleagueofmoveabletype.com/

To use fonts in Processing, you need to convert them from their original file format to the .vlw
file format Processing uses. You can do this with the Create Font tool. Select the font you
need, set a size, and click on the OK button. The .vlw font will be saved to the data folder of
your sketch.
*/

// STEP 1
PFont ostrichSans;
PFont junction;

void setup() {
  size( 640, 480 );
  ostrichSans = loadFont("OstrichSans-Bold-48.vlw");
  junction = loadFont("Junction-24.vlw");
  strokeCap( SQUARE );
}

void draw() {
  background(255);
  fill( 128, 0, 0 );
  textFont( ostrichSans, 48 );
  textAlign( LEFT );
  text( "Hello, I'm Ostrich Sans", 20, 50 );
  textFont( junction, 24 );
  text("I'm a line of text, set in Junction.", 20, 80);
  stroke( 128, 0, 0 );
  strokeWeight( 1 );
  line( 20, 94, 620, 94 );
  line( 20, 96, 620, 96 );

// STEP 2
  fill( 0 );
  textFont( junction, 24 );
  text( "The quick brown fox jumps over the lazy dog. (24)", 20, 130 );
  textFont( junction, 18 );
  text( "Pack my box with five dozen liquor jugs. (18)", 20, 154 );
  textFont( junction, 12 );
  text( "Blowzy red vixens fight for a quick jump. (12)", 20, 172 );
  stroke( 128 );
  strokeWeight( 3 );
  line( 20, 186, 620, 186 );

// STEP 3

  fill( 245 );
  stroke( 128 );
  strokeWeight( 1 );
  rect( 20, 192, 600, 110 );
    
  stroke( 128 );
  line( width/2, 192, width/2, 298 );
    
  fill( 128 );
  stroke( 128 );
  triangle( width/2-4, 192, width/2+4, 192, width/2, 196 );
  triangle( width/2-4, 302, width/2+4, 302, width/2, 298 );

  fill( 0 );
  textFont( junction, 24 );
  textAlign( LEFT );
  text( "since I left you", width/2, 225 );
  textAlign( CENTER );
  text( "symmetry is boring", width/2, 252 );
  textAlign( RIGHT );
  text( "flush to the right", width/2, 280 );

}
