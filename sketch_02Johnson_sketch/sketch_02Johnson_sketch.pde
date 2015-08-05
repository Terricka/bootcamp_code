// advanced - making pMouseX and pMouseY to capture previous mouse position and 
// compare current mouse position to it for various effects. 

// most stuff is commented out 

// this was all live coded as an example - start with a simple shape,
// then add variables to parameterize color, etc. 
// then make pMouseX etc. variables and assign it to mouseX each frame, 
// then make some shit with it. 


float pMouseX; 
float pMouseY; 

int counter;

void setup() {
  background(250);
  size(800,600); 
  smooth(); 
  counter = 0; 
  }


void draw() { 
   
  
    counter = (counter + 1) % 50;
    println(counter);
    float diffX = (mouseX+pMouseX); 
    float diffY =(mouseY+pMouseY); 
   
    float diff1 = mouseX;
    float diff2 = mouseY;
   
   
   
    
    noStroke();
    fill( random(255), random(255), random(255), random(100)); 
    rect( random(800), random(600), diff2, diff2); 
    
    noStroke();
    fill( random(255), random(255), random(255), random(100)); 
    ellipse( random(800), random(600), diff2, diff2);
   
   noStroke();
    fill( random(255), random(255), random(255), random(100)); 
    triangle( random(800), random(600), random(800), random(600), diff2, diff2); 
   
}
   void mouseOver() {

    fill( random(255), random(255), random(255), random(100)); 
    
 

}
    
  





