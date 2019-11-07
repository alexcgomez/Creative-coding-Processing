
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
  background(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  translate(width/2,height/2);
  shape(arrow, 0, 0);
  arrow.rotate(0.05);
}
