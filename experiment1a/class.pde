class circle {
  int cPosX, cPosY, cSize;
  
  circle() {
    
    
    
  }
  
  void drawCircle() {
    cPosX = int(random(0,width));
    cPosY = int(random(0,height));
    
    
    
    //cSize = int(random(1,random(1,25)));
    cSize = int((pixelsR[cPosX+cPosY*camW] + pixelsG[cPosX+cPosY*camW] + pixelsB[cPosX+cPosY*camW])/random(30,60));
    
    noStroke();
    fill(pixelsR[cPosX+cPosY*camW], pixelsG[cPosX+cPosY*camW], pixelsB[cPosX+cPosY*camW]);
    
    ellipse(cPosX, cPosY, cSize, cSize);
    
    
    
  }
  
  
  
  
  
}
