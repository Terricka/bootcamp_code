// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;
color yellow;
color tan;
color green;
color darktan;
color burgundy;
color lightburgundy;

void setup () {
   size (800, 550);
   
    // Define colors
  b1 = color(111, 169, 221);
  b2 = color(237, 185, 69);


  noLoop();
  
  yellow = color(237, 204, 69);
  green = color(128, 188, 130);
  tan = color(229, 216, 195);
  darktan = color(196, 177, 155);
  burgundy = color(145, 44, 5);
  lightburgundy = color(178, 87, 59);
  
}

void draw () {
   // Background
  setGradient(0, 0, width, height, b1, b2, Y_AXIS);

}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  } 
  
  noStroke();
  fill(yellow);
  ellipse(700, 100, 150, 150);
 
  noStroke();
  fill(green);
  rect(0, 475, 800, 550);
  
  
  noStroke();
  fill(tan);
  rect(150, 300, 500, 250);
  
  noStroke();
  fill(darktan);
  rect(350, 375, 100, 180);
  
  noStroke();
  fill(burgundy);
  triangle(400, 125, 670, 300, 125, 300);
  
 noStroke();
  fill(darktan);
  rect(175, 365, 150, 120);

  
  noStroke();
  fill(darktan);
  rect(475, 365, 150, 120);


 noStroke();
  fill(darktan);
  rect(190, 325, 120, 15);
  
  noStroke();
  fill(darktan);
  rect(490, 325, 120, 15);
}
