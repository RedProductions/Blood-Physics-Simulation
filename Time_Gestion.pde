int currentTime = 0;
int pastTime = 0;

int deltaTime = 0;

int shotRate = 100;
int lastShot = 0;

void timeCalc(){
  
  pastTime = currentTime;
  currentTime = millis();
  
  deltaTime = currentTime - pastTime;
  
}