void setup() {
  size(640, 360);
  background(102);
  stroke(0);
}

void draw() {  
  if (mousePressed) fill(#FF0000);
  else fill(#00FF00);
  
  ellipse(mouseX, mouseY, 100, 100);
}
