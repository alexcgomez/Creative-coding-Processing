
PShape land;

void setup() {
  size(900,600);
  land = loadShape("antarctica.svg");
  noStroke();
}

void draw() {
  background(204);
  shape(land, 0, 0);
  land.disableStyle();
  fill(255);
  shape(land, 300, 0);
  stroke(0);
  shape(land, 600, 0);
  noStroke();
  fill(112);
  shape(land, 0, 300);
  land.enableStyle();
  fill(255);  // it doesn't nothing
  shape(land, 300, 300);
}
