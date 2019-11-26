// Exercice 4
// Alex Caceres
int x, y, a;

void setup() {

  size(600, 600);
  x = width/2;
  y = height/2;
  a = 0;
}

void draw() {
  background(0);
  noStroke();
  translate(width/2, height/2);
  rotate(radians(a));
  translate(100, 0);
  for ( int i = 10; i > 0; i--) {
    fill(i-10,i*10);
    ellipse(0+i*5, 0+i*5, i*20, i*20);
  }
  a+=1;
}
