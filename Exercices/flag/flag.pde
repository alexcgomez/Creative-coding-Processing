int x, y;

void setup() {
  size(640, 325);
  x = 0;
  y = 0;
}

void draw() {
  background(0);


  for (int i = 0; i < 14; i++) {
    if (i % 2 == 0) {
      fill(255, 0, 0);
      rect(0, i*25, width, 25);
    } else {
      fill(255, 255, 255);
      rect(0, i*25, width, 25);
    }
  }
  fill(0,0,255);
  rect(0, 0, 250, 175);
  fill(255);
  noStroke();
 for (int i = 0; i < 9; i++) {
  for (int k = 0; k < 6; k++) {
    
          x=20;
          x=x+k*40;
          putStar(x,y);
       
  }
  y+=19;
 }
  x=0;
  y=10;
}

void putStar(int x, int y) {
  pushMatrix();
  translate(x, y);
  scale(0.25, 0.25);
  noStroke();
  star();
  popMatrix();
}






void star() {
  scale(0.5);
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CLOSE);
}
