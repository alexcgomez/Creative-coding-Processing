
PImage im;

void setup() {
    size( 900, 600 );
    im = loadImage("eseiaat_300x200.jpg");
}

void draw() {
    image(im,mouseX,mouseY);
}
