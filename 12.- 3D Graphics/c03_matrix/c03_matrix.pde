void setup() {
  size(900, 600, P3D);
  fill(192);
}

void draw() {
  lights();
  background(0);
  translate(width/2, height/2, 0);
  float rx = map(mouseY, 0, height, -PI, PI);
  float ry = map(mouseX, 0, width, -PI, PI); 
  rotateX(rx);
  rotateY(ry);

  for (int y = -1; y <= 1; y++) {
    for (int x = -1; x <= 1; x++) {
      for (int z = -1; z <= 1; z++) {
        pushMatrix();
        translate(100*x, 100*y, -100*z);
        box(50);
        popMatrix();
      }
    }
  }

}
