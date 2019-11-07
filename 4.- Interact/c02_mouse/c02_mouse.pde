   
void setup() {
  size(800, 600);
  background(102);
  stroke(0);
  fill(#FF0000);
}

void draw() {
  if (mousePressed) ellipse(mouseX, mouseY, 100, 100);
}
