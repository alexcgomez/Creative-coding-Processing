size(900,600);
background(255);

for (int i = 0; i < 64; i++) {
  for (int j = 0; j < 64; j++) {
    fill(i*4,j*4,0);
    rect(22+i*4,22+j*4,4,4);
    fill(i*4,j*4,255);
    rect(22+i*4,322+j*4,4,4);

    fill(j*4,0,i*4);
    rect(322+i*4,22+j*4,4,4);
    fill(i*4,255,j*4);
    rect(322+i*4,322+j*4,4,4);

    fill(0,i*4,j*4);
    rect(622+i*4,22+j*4,4,4);
    fill(255,i*4,j*4);
    rect(622+i*4,322+j*4,4,4);
  }
}
