
PShape pot;
float angle = 0.0;
int rot_axis;

void setup() {
  size(800, 800, P3D);
  pot = loadShape("teapot.obj");
  shapeMode(CENTER);
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2);
  scale(40);
  if (rot_axis==1) { rotateX(angle); }
  else if (rot_axis==2) { rotateY(angle); }
  else if (rot_axis==3) { rotateZ(angle); }
  
  shape(pot, 0, 0);
  angle += 0.05;
}


void keyPressed() { 
  switch(key){
  case 'x':
    rot_axis = 1;
    break;
  case 'y':
    rot_axis = 2;
    break;
  case 'z':
    rot_axis = 3;
    break;
  default:
    rot_axis = 0;
    break;
  }
}
