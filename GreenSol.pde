boolean bDrawFill = false;
float posX, posY;
float size;
float increment;

color shadeColor = color (255);


//---------------------------------
void setup(){
  size(1024,768);
  

  frame.setTitle("GreenSol Square Placement");
  smooth();
  
  posX = mouseX;
  posY= mouseY;
  
  size= 0;
  
  increment = 5;
 
}

void update (){
  size += increment;
  
  int max_size = 300;
  
  if (size >= max_size || size <= 0) {
    increment *= -1;
  }
}

//---------------------------------
void draw(){
  update();
  background(170);

fill(shadeColor);
rect(mouseX, mouseY, size,size);
rectMode(CENTER);
strokeWeight(3);
}

//---------------------------------

void mousePressed(){
  shadeColor = color(random(255),random(255),random(255));
  
}