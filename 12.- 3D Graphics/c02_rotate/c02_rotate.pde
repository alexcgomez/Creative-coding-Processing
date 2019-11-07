void setup() {
  size(900, 600, P3D);
  fill(192);
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  float rx = map(mouseY, 0, height, -PI, PI);
  float ry = map(mouseX, 0, width, -PI, PI); 
  rotateX(rx);
  rotateY(ry);
  noStroke();
  rect(-100, -100, 200, 200);
  stroke(255);
  line(0, 0, -100, 0, 0, 100);
}
