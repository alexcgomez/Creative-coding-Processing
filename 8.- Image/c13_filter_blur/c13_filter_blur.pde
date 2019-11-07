PImage im;

void setup() {
  size( 900, 600 );
  background(0);
  im = loadImage("clown.jpg");
  imageMode(CENTER);
}

void draw() {
  image(im, width/2, height/2); 
  float v = map(mouseX, 0, width, 0, 16.0);
  filter(BLUR, v);
}
