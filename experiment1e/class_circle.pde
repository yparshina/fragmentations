class circle {
  int point1X, point1Y, point2X, point2Y, bez1X, bez1Y, bez2X, bez2Y;
  float colorR, colorG, colorB;
  
  circle() {
    
    
    
  }
  
  void drawCircle() {
    point1X = int(random(0,width));
    point1Y = int(random(0,height));
    point2X = point1X + int((pixelsR[point1X+point1Y*camW] + pixelsG[point1X+point1Y*camW] + pixelsB[point1X+point1Y*camW])/random(20,200));
    point2Y = point1Y + int((pixelsR[point1X+point1Y*camW] + pixelsG[point1X+point1Y*camW] + pixelsB[point1X+point1Y*camW])/(random(20,200)*random(-1,1)));
   bez1X = point1X + int(random(-20,20));
   bez1Y = point1Y + int(random(-20,20));
   bez2X = point2X + int(random(-20,20));
   bez2Y = point2Y + int(random(-20,20));
    
    
    
 
    
   colorR = pixelsR[point1X+point1Y*camW];
   colorG = pixelsG[point1X+point1Y*camW];
   colorB = pixelsB[point1X+point1Y*camW];
    
    fill(colorR, colorG, colorB,200);
    noStroke();
//rotate(random(-1,1));
    bezier(point1X, point1Y, bez1X, bez1Y, bez2X, bez2Y, point2X, point2Y);
    
    
    
  }
  
  
  
  
  
}
