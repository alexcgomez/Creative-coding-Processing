size(900,600);
background(255);
noStroke();
colorMode(HSB, 360, 100, 100);

for (int h = 0; h < 360; h++ ) {
  for (int s = 0; s < 100; s++) {
    fill(h,s,0);
    rect(90+h*2,50+s,2,1);
    fill(h,s,25);
    rect(90+h*2,150+s,2,1);
    fill(h,s,50);
    rect(90+h*2,250+s,2,1);    
    fill(h,s,75);
    rect(90+h*2,350+s,2,1);
    fill(h,s,100);
    rect(90+h*2,450+s,2,1);   
  }
}
