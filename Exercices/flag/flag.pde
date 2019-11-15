int x, y;
int  k;

void setup() {
  size(640, 350);
  x = 0;
  y = 0;
  k= 35;
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

  for (int i = 0; i < 50; i++) {
    x= k+35;
  
    if(k<200){
    putStar(x, y+10);}
   
  }
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
