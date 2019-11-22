int hr, min, sec;

void setup() {
  size(400, 400);
  hr = hour();
  min = minute();
  sec = second();
}

void draw() {
  hr = hour();
  min = minute();
  sec = second();
  background(255);
  translate(width/2, height/2);


  // Draw the Clock numbers
  for (int i = 1; i<13; i++) {
    fill(0);
    text(i, width/4*cos(radians(-i*30+90)), -height/4*sin(radians(-i*30+90)));
  }

  // Draw the seconds line

  stroke(0,0,255);
  line(0, 0, width/4*cos(radians(-(360/60)*sec+90)), -height/4*sin(radians(-(360/60)*sec+90)));
    // Draw the seconds line

  stroke(0,100,0);
  line(0, 0, width/4*cos(radians(-min)), -height/4*sin(radians(-min)));
    // Draw the seconds line

  stroke(200,0,0);
  line(0, 0, width/4*cos(radians(-hr)), -height/4*sin(radians(-hr)));
  
}
