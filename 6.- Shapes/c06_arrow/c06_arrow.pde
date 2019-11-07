
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
  arrow.scale(2);
  shapeMode(CENTER);
}

void draw() {
  background(255);
  translate(width/2,height/2);  
  for (int i = 0; i < arrow.getVertexCount(); i++) {
    float x = arrow.getVertexX(i);
    float y = arrow.getVertexY(i);
    x += random(-1, 1);
    y += random(-1, 1);
    arrow.setVertex(i, x, y);
  }
  shape(arrow, 0, 0);
}
