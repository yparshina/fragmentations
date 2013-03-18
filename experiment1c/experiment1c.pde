int camW = 640;
int camH = 480;

//image for filling in the back
PImage shadowImg, lightImg;

import processing.video.*;
float pixelR, pixelG, pixelB;

float pixelsR[] = new float [camW*camH];
float pixelsG[] = new float [camW*camH];
float pixelsB[] = new float [camW*camH];

circle[] colorCircs = new circle[4000];

Capture video;
//************************************* SETUP *********************************************
void setup() {
  size(640, 480);
 
 for (int i = 0; i < colorCircs.length; i++) {
 colorCircs[i] = new circle();    
 }

  // load video
  video = new Capture(this, width, height);
  video.start();
}
//************************************* DRAW *********************************************
void draw() {

  //_________________________________VIDEO & CHANGE PIXELS ________________________________     
  if (video.available ()) {
    video.read();
    video.loadPixels();
    loadPixels();

    for (int x=0;x< video.width; x++) {
      for (int y=0;y< video.height; y++) {

        //find a pixel in the array
        int thisPixel1 = (x+ y*video.width);

        //get color info
        color ColorFromVid = video.pixels[thisPixel1]; 

        pixelsR[thisPixel1]= red(ColorFromVid);
        pixelsG[thisPixel1]= green(ColorFromVid);
        pixelsB[thisPixel1]= blue(ColorFromVid);

        // change colors


        // put new colors into pixels
        color newColor= color(pixelR, pixelG, pixelB);
        pixels[thisPixel1]= newColor;
      }
    }

  //  updatePixels();
  }
fill(0, 10);
rect(0,0, width, height);

 for (int i = 0; i < colorCircs.length; i++) {
 colorCircs[i].drawCircle();    
 }


}

