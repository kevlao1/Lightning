void setup(){
  size(1280, 720);
  frameRate(30);
  background(0);
}

void draw(){
  if (mousePress == true){
    lightning();
  }
   backgroundEnv();
}

boolean mousePress = false;

void mousePressed(){
mousePress = true;
}

 float x0 = (float)(Math.random()*1280);
 float y0 = 0;
 float x1 = x0;
 float y1 = y0;

void lightning(){
  float weight = 20;
  strokeWeight(weight);
  stroke(255, 255, 185, 125);
  x1 = x0+(int)((Math.random()*200)-100);
  y1 = y0+(int)((Math.random()*120));
  line(x0, y0, x1, y1);
  x0 = x1;
  y0 = y1;
  weight = weight - 1;
  if (y1 >= 600){
    mousePress = false;
    x0 = (float)(Math.random()*1280);
    y0 = 0;
    x1 = x0;
    y1 = y0;
  return;
  }
}

void backgroundEnv(){
  fill(15, 130, 10);
  strokeWeight(5);
  stroke(50, 110, 50);
  rect(0, 600, 1280, 120);
  fill(110, 110, 100);
  stroke(70, 70, 70);
  ellipse(300, 0, 500, 200);
  ellipse(900, 0, 600, 300);
  ellipse(500, 100, 350, 250);
  ellipse(0, 0, 100, 50);
  ellipse(1300, 30, 250, 150);
}
