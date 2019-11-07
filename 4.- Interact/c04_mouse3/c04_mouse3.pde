boolean on=false;
   
void setup() {
  size(800, 600);
  background(102);
  stroke(0);
  fill(#FF0000);
}

void draw() {
  if (on) ellipse(mouseX, mouseY, 100, 100);

}

void mousePressed() {
  on=!on;
}
