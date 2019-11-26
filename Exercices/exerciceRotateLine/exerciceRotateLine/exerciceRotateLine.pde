// Exercice 4
// Alex Caceres
int x, y, a,b;

void setup() {
  //noLoop();
  size(600, 600);
  x = width/2;
  y = height/2;
  a = 0;
  b =0;
}

void draw() {
background(0);
translate(width/2,height/2);
rotate(radians(b));

for (int i = 0 ; i<21; i++){
stroke(255,100);
strokeWeight(25);
line(0,0,i*10,i*10);
rotate(radians(a));
a +=1;
}
a=0;
b+=1;



}
