class circle {
  int cPosX, cPosY, cSize;
  
  circle() {
    
    
    
  }
  
  void drawCircle() {
    cPosX = int(random(0,width));
    cPosY = int(random(0,height));
    
    
    
    //cSize = int(random(1,random(1,25)));
    cSize = int((pixelsR[cPosX+cPosY*camW] + pixelsG[cPosX+cPosY*camW] + pixelsB[cPosX+cPosY*camW])/random(20,80));
    
    noStroke();
    fill(pixelsR[cPosX+cPosY*camW], pixelsG[cPosX+cPosY*camW], pixelsB[cPosX+cPosY*camW], 50);
    
   // rotate(random(0,360));
    rect(cPosX, cPosY, cSize, cSize);
    
    
    
  }
  
  
  
  
  
}
