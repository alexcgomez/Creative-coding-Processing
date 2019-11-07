
PShape petal;

void setup() {
  size(900, 600, P3D);
  petal = createShape();
  petal.beginShape();
  petal.noStroke();
  petal.fill(0);
  petal.vertex(90, 39);
  petal.bezierVertex(90, 39, 54, 17, 26, 83);
  petal.bezierVertex(26, 83, 90, 107, 90, 39);
  petal.endShape();
  petal.translate(-50, -50);
  petal.scale(4);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  shape(petal, 0, 0);
  petal.rotateX(0.01);
}
