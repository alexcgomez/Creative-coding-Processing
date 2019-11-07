PImage im, im2;

void setup() {
  size( 900, 600 );
  background(0);
  im = loadImage("clown.jpg");
  im2 = loadImage("clown.jpg");
  im2.filter(INVERT);
  imageMode(CENTER);
}

void draw() {
  if (mouseX < width/2) {
    image(im, width/2, height/2);
  } else {
    image(im2, width/2, height/2);
  }
}
