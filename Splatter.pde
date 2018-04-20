class Splatter{
  
  PVector pos;
  PVector vel;
  
  ArrayList<Drop> d;
  
  int amount;
  
  boolean alive;
  
  Splatter(float x, float y, float dirx, float diry){
    
    pos = new PVector();
    vel = new PVector();
    
    pos.x = x;
    pos.y = y;
    
    vel.x = dirx/30;
    vel.y = diry/30;
    
    amount = int(DROP_AMOUNT + random(-10, 10));
    
    d = new ArrayList<Drop>();
    
    alive = true;
    
    createDrops();
    
  }
  
  boolean is_alive(){return alive;}
  
  int get_amount(){return amount;}
  
  
  void update(){
    
    int currentDead = 0;
    
    for(int i = amount - 1; i >= 0; i--){
      
      Drop part = d.get(i);
      
      part.update();
      
      if(!part.is_alive()){
        
        currentDead++;
        
      }
      
    }
    
    if(currentDead >= amount){
      
      alive = false;
      
    }
    
  }
  
  
  void show(){
    
    for(Drop part : d){
      
      part.show();
      
    }
    
  }
  
  
  void createDrops(){
    
    for(int i = 0; i < amount; i++){
      
      d.add(new Drop(pos.x, pos.y, vel.x, vel.y));
      
    }
    
  }
  
  
  
  
}