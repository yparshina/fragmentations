Circles[] myCircle = new Circles[90];
//float cXpass, cYpass;

float cRpass, cGpass, cBpass, cAlpha;


import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  video= new Capture(this, width, height);
  video.start();
  cRpass = 255;
  cGpass = 0;
  cBpass = 0;
  cAlpha = 200;
  for (int i=0; i<myCircle.length; i++) {
    myCircle[i] = new Circles();
  }
}

void draw() {


  if (video.available ()) {
    video.read();
    video.loadPixels();
    loadPixels();

    for (int x=0;x< video.width; x++) {
      for (int y=0;y< video.height; y++) {

        //find a pixel in the array
        int thisPixel= (x+ y*video.width);

       
        //get color info
        color ColorFromImage= video.pixels[thisPixel];
        float pixelR= red(ColorFromImage);
        float pixelG= green(ColorFromImage);
        float pixelB= blue(ColorFromImage);

        // change colors
        if (pixelR <= 100 && pixelG <= 100 && pixelB <= 100) {
          pixelR=random(0, 10);
          pixelG=random(20, 60);
          pixelB=random(40, 80);
          cAlpha = 0;
        }   
        else {
          pixelR=random(210, 255);
          pixelG=random(210, 255);
          pixelB=random(100, 120);
          cAlpha = 200;
        }



        // put new colors into pixels
        color newColor= color(pixelR, pixelG, pixelB);
        pixels[thisPixel]= newColor;
      }
    }


    updatePixels();


    for (int i=0; i<myCircle.length; i++) {

      myCircle[i].drawCircle(cRpass, cGpass, cBpass, cAlpha);
    }
  }
}

class circle {

  float cSize, cPosX, cPosY;

  circle(float cX, float cY) {
   
    cSize = random (5, 15);
    cPosX = cX;
    cPosY = cY;
  }

  void drawCircle() {
    fill(255,0,0);
    ellipse(cPosX, cPosY, cSize, cSize);
  }
}

class Circles {

  float cSize, cPosX, cPosY;
  float cR, cG, cB, cAlpha;

  Circles() {
   
    cSize = random(5,15);
    cPosX = random(0,width);
    cPosY = random(0,height);
    
 
  }

  float drawCircle(float r, float g, float b, float Alpha) {
       cR = r;
    cG = g;
    cB = b;
    cAlpha = Alpha;
    noStroke();
    fill(cR,cG,cB,cAlpha);
    ellipse(cPosX, cPosY, cSize, cSize);
    return (cPosX);
  }
}

