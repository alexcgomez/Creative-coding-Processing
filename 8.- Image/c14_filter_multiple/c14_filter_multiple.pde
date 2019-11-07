PImage img, img2;

size(920,600);
img = loadImage("pencils.jpg");
img2 = loadImage("pencils.jpg");
    
//img2.filter(GRAY);
//img2.filter(POSTERIZE,2);
img2.filter(INVERT);
//img2.filter(THRESHOLD, 0.3);
//img2.filter(BLUR, 4);

image(img, 0, 0); 
image(img2, width/2, 0); 
