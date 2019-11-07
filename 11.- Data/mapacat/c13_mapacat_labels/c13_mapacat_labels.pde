/* 
Example based on chapter 3 from the book
"Visualizing Data" by Ben Fry, 2008, ISBN 978-0-596-51455-6
*/ 

PImage mapImage;
Table locationTable;
Table dataTable;
int rowCount;

void setup() {
  size(600, 600);
  mapImage = loadImage("mapaCat.png");

  locationTable = new Table("mapa.csv");
  rowCount = locationTable.getRowCount();

  // Data from Wikipedia 
  dataTable = new Table("comarques.csv");

  PFont font = loadFont("Univers-Bold-12.vlw");
  textFont(font);

}

void draw() {
  background(255);
  image(mapImage, 0, 0);

  for (int row = 0; row < rowCount; row++) {
    String code = dataTable.getRowName(row);
    int x = locationTable.getInt(code, 1);
    int y = locationTable.getInt(code, 2);
    drawData(x, y, code);
  }
}

void drawData(int x, int y, String code) {
  float radius = 6;

  fill(192, 0, 0);
  noStroke();
  ellipse(x, y, radius, radius);
  
  if (dist(x, y, mouseX, mouseY) < radius) {
    fill(0);
    textAlign(CENTER);
    String name = dataTable.getString(code, 1);
    text(name, x, y-radius-4);
  }
}
