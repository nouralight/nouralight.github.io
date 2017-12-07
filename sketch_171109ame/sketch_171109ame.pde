/*

 * 20110507.pde

 */

 
PImage extrude;

int[][] values;

float angle = 0;
 

void setup() {

  size(439, 504, P3D);

  extrude = loadImage("noor.jpg");

  extrude.loadPixels();

  values = new int[extrude.width][extrude.height];

  for (int y = 0; y < extrude.height; y++) {

    for (int x = 0; x < extrude.width; x++) {

      color pixel = extrude.get(x, y);

      values[x][y] = int(brightness(pixel));

    }

  }

}

 

void draw() {

  background(#A07B97);

  angle += 0.05;

 

  translate(width/2, 0, -128);

  rotateY(angle);  

  translate(-extrude.width/2, 200, -180);

   

  for (int y = 0; y < extrude.height; y++) {

    for (int x = 0; x < extrude.width; x++) {

      stroke(values[x][y]);

      point(x, y, -values[x][y]);
    }
  }
 
}