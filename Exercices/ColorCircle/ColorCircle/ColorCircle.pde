float x, y,a;

void setup() {

    background(0);
    size(600, 600);
    colorMode(HSB,360,100,300);
}
    
void draw() {
    translate(width/2,height/2);
    for (int angle = 0; angle < 360; angle++) {
        for (int radius = 0; radius <300; radius++) {
            a = map(angle,0,360,3*PI/2,3*PI/2+TWO_PI);
            x = radius*cos(a);
            y = radius*sin(a);
            noStroke();
            fill(angle,100,radius);
            ellipse(x,y,10,10);
   
        }
    }
}
