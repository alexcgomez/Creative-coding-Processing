
PShape arrow;

void setup() {
  size(900,600);
  arrow = createShape();
  arrow.beginShape();
  arrow.fill(0);
  arrow.noStroke();
  arrow.vertex(50, 0);
  arrow.vertex(70, 40);
  arrow.vertex(60, 40);
  arrow.vertex(60, 100);
  arrow.vertex(40, 100);
  arrow.vertex(40, 40);
  arrow.vertex(30, 40);
  arrow.endShape(CLOSE);
}

void draw() {
  shape(arrow, 0, 0);
}
