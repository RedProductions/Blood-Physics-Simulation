class Drop{
  
  PVector pos;
  PVector vel;
  
  float offset = 15;
  float random = 2;
  
  float size = 6;
  float minSize = 4;
  
  boolean alive;
  boolean hit;
  
  int timeShow;
  int spawnTime;
  
  Drop(float x, float y, float dirx, float diry){
    
    pos = new PVector();
    vel = new PVector();
    
    pos.x = x + random(-offset, offset);
    pos.y = y + random(-offset, offset);
    
    int randomness = int(random(0, 2));
    
    if(randomness == 0){
      vel.x = dirx + random(-random, random);
      vel.y = diry + random(-random, random);
    }else {
      vel.x = dirx * random(1, 2);
      vel.y = diry * random(1, 2);
    }
    
    float sizeRandom = random(-2, 2);
    float goalSizeRandom = random(-1, 2);
    
    size += sizeRandom;
    minSize += goalSizeRandom;
    
    alive = true;
    hit = false;
    
    spawnTime = currentTime;
    
    timeShow = 15000 + int(random(-3000, 3000));
    
  }
  
  boolean is_alive(){return alive;}
  
  
  void update(){
    
    vel.y *= AIR_RESISTANCE;
    vel.x *= AIR_RESISTANCE;
    
    if(size > minSize && !hit){
      size -= GRAVITY;
    }else if(!hit){
      hit = true;
      size += 2;
      vel.y = 0;
      vel.x = 0;
    }
    
    pos.x += vel.x;
    pos.y += vel.y;
    
    if(currentTime - spawnTime >= timeShow){
      alive = false;
    }
    
  }
  
  void show(){
    
    if(alive){
      
      fill(200, 0, 0);
      
      rect(pos.x - size/2, pos.y - size/2, size, size);
      
    }
    
  }
  
  
}