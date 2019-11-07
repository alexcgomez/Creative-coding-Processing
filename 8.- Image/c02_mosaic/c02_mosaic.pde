
PImage im;
int m = 100; 
int N,M;

void setup() {
    size( 900, 600 );
    N = height/m;
    M = width/m; 

    im = loadImage("eseiaat_900x600.jpg");
    image(im,0,0);
}

void draw() {
    int i1 = floor(random(0,N));
    int j1 = floor(random(0,M));
    int i2 = floor(random(0,N));
    int j2 = floor(random(0,M));
    
    PImage sub1 = im.get(j1*m,i1*m,m,m);
    PImage sub2 = im.get(j2*m,i2*m,m,m);
    im.set(j1*m,i1*m,sub2);
    im.set(j2*m,i2*m,sub1);    
    image(im,0,0);
}
