final float MIN = 0f;
final float MAX = 300f;
float a = MIN;
float b = MIN;
float c = MIN;
boolean circleAt100 = false;
boolean circleAt200 = false;



void setup(){
size(800,800);
frameRate(60);
}

void draw(){
background(random(255), random(255), random(255), 80);  

float alpha = int(map(a, MIN, MAX, 255, 0));
noStroke();
fill(random(255), random(255), random(255), 70);
ellipse(width/2, height/2, a, a);
a = a+2f;
if (a > MAX){
 a = MIN;
}
if (a == 600){
circleAt100 = true;
}
if (circleAt100 == true){
 
float beta = int(map(b, MIN, MAX, 255, 0));
fill(random(255), random(255), random(255), 70);
ellipse(width/2, height/2, b, b);
b = b+2f;
if (b > MAX){
 b = MIN;
}
}

if (a == 600){
circleAt200 = true;
}
if (circleAt200 == true){
 
float gamma = int(map(c, MIN, MAX, 255, 0));
fill(random(255), random(255), random(255), 70);
ellipse(width/2, height/2, c, c);
c = c+2f;
if (c > MAX){
 c = MIN;
}
}

if (mousePressed) {
    int i = 100;
while ( i <= 700 ) {
  fill(random(255), random(255), random(255), 30);
   ellipse(mouseX, mouseY, 600, 600);
  i = i + 100; 
}
   
}

if (mousePressed) {
    int i = 100;
while ( i <= 700 ) {
  fill(random(255), random(255), random(255), 30);
   ellipse(width/2, height/2, mouseX, mouseX);
  i = i + 100; 
}
   
}



}
