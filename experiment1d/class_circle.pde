class circle {
  int point1X, point1Y, point2X, point2Y;
  float colorR, colorG, colorB;
  
  circle() {
    
    
    
  }
  
  void drawCircle() {
    point1X = int(random(0,width));
    point1Y = int(random(0,height));
    point2X = point1X;
    point2Y = point1Y +int(random(10,100)*random(1,-1)+10);
    
    
    
 
    
   colorR = pixelsR[point1X+point1Y*camW];
   colorG = pixelsG[point1X+point1Y*camW];
   colorB = pixelsB[point1X+point1Y*camW];
    
    stroke(colorR, colorG, colorB);
    noFill();

    bezier(point1X, point1Y, sin(point1X/random(10,20)), point1Y, cos(point2X/random(5,10)), point2Y, point2X, point2Y);
    
    
    
  }
  
  
  
  
  
}
