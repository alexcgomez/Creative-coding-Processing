
PShape land;

void setup() {
  size(900,600);
  land = loadShape("antarctica.svg");
}

void draw() {
  background(204);
  shape(land, 0, 0); 
  shape(land, 300, 0, 600, 600); 
}
