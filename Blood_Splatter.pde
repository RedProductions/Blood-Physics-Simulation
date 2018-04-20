void setup(){
  
  size(800, 800);
  
  noStroke();
  
  pos.x = width/2;
  pos.y = height/2;
  
}



void draw(){
  
  timeCalc();
  
  updateAll();
  
  showAll();
  
  fill(0);
  
  ellipse(pos.x, pos.y, 30, 30);
  
}