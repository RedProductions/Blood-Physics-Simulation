void updateAll(){
  
  for(int i = s.size() - 1; i >= 0; i--){
    
    Splatter part = s.get(i);
    
    part.update();
    
    if(!part.is_alive()){
      
      s.remove(part);
      
    }
    
  }
  
}

void showAll(){
  
  background(255);
  
  for(Splatter part : s){
    
    part.show();
    
  }
  
}


void clearAll(){
  
  for(int i = s.size() - 1; i >= 0; i--){
    
    Splatter part = s.get(i);
    
    for(int j = part.get_amount() - 1; j >= 0; j--){
      
      part.d.remove(j);
      
    }
    
    s.remove(i);
    
  }
  
}