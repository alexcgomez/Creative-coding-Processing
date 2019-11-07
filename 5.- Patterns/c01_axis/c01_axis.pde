size(800,600); 
background(255);
fill(0);

  
// Default coordinate system
text("ZERO",10,10);

// Translation
translate(100,50);
text("ONE",10,10);

// second translation (accumulative)
translate(200,100);
text("TWO",10,10);

// Stack (push and pop)
pushMatrix();
translate(-100,50);
text("THREE",0,0);
popMatrix();

// Back to the last coordinate system 
text("FOUR",100,00);

// Rotation
rotate(HALF_PI); 
text("FIVE",0,0);

rotate(PI); 
text("SIX",50,0);

rotate(2*PI/3); 
text("SEVEN",0,0);

// Scale
translate(100,100);
text("EIGHT",10,0);
scale(2.0); 
text("NINE",10,0);
scale(4.0); 
text("TEN",10,0);
