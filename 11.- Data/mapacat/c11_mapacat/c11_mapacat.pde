/* 
Example based on chapter 3 from the book
"Visualizing Data" by Ben Fry, 2008, ISBN 978-0-596-51455-6
*/ 

PImage mapImage;

void setup() {
  size(600, 600);
  mapImage = loadImage("mapaCat.png");
}

void draw() {
  background(255);
  image(mapImage, 0, 0);
}
