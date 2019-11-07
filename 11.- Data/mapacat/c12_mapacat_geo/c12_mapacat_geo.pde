/* 
Example based on chapter 3 from the book
"Visualizing Data" by Ben Fry, 2008, ISBN 978-0-596-51455-6
*/ 

PImage mapImage;
Table locationTable;
int rowCount;

void setup() {
  size(600, 600);
  mapImage = loadImage("mapaCat.png");

  // Open new table with XY coordinates for each "capital de comarca" 
  locationTable = new Table("mapa.csv");
  rowCount = locationTable.getRowCount();
}

void draw() {
  background(255);
  image(mapImage, 0, 0);

  fill(192, 0, 0);
  noStroke();

  // get values and plot points  
  for (int row = 0; row < rowCount; row++) {
    int x = locationTable.getInt(row, 1);  // columna 1
    int y = locationTable.getInt(row, 2);  // columna 2
    ellipse(x, y, 4, 4);
  }
}
