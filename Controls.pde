void mousePressed(){
  
  float dist = dist(pos.x, pos.y, mouseX, mouseY);
  
  float angle = degrees(asin((pos.y - mouseY)/dist));
  
  if(mouseX > pos.x){
    angle = 180 - angle;
  }
  
  float x = cos(radians(angle)) * 120;
  float y = sin(radians(angle)) * 120;
  
  s.add(new Splatter(pos.x, pos.y, x, y));
  
}

void mouseDragged(){
  
  if(currentTime - lastShot >= shotRate){
    
    float dist = dist(pos.x, pos.y, mouseX, mouseY);
    
    float angle = degrees(asin((pos.y - mouseY)/dist));
    
    if(mouseX > pos.x){
      angle = 180 - angle;
    }
    
    float x = cos(radians(angle)) * 120;
    float y = sin(radians(angle)) * 120;
    
    s.add(new Splatter(pos.x, pos.y, x, y));
    
    lastShot = currentTime;
    
  }
}


void keyPressed(){
  
  if(key == 'a'){
    
    pos.x -= speed;
    
  }else if(key == 's'){
    
    pos.y += speed;
    
  }else if(key == 'd'){
    
    pos.x += speed;
    
  }else if(key == 'w'){
    
    pos.y -= speed;
    
  }else if(key == 'r'){
    
    clearAll();
    
  }
  
}