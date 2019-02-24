import gab.opencv.*;
OpenCV opencv;

PImage img;
import processing.video.*;
Capture video;
float thres=200;
int xr,xg,xb,xy,xp,yr,yg,yb,yy,yp;
float thres2=150;
float thres3=150;
float Thres=200,Thres2=150,Thres3=150;
int flag=0;
int i=0;


void setup(){
 size(1280,720);
video = new Capture(this,1280,720);
video.start();
}
void draw(){
 background(0);
 image(video,0,0);
 loadPixels();
video.loadPixels();
//for ( int x1=0; x1<width; x1++){        //for the red part 
//  for ( int y1=0;y1<height; y1++)
//{
//   int loc=x1+y1*width;
//  float r=red(video.pixels[loc]);
//  float g=green(video.pixels[loc]);
//  float b=blue(video.pixels[loc]);
//  if(r>thres && g<thres2 && b<thres2 )
//  {
//    xr=x1;
//    yr=y1;
//    fill(255,0,0,100);
//    ellipse(xr,yr,50,50);
//    break;
//  } 
//}  break;
//}



//for ( int x2=0; x2<width; x2++){       //for the green part 
//  for ( int y2=0;y2<height; y2++)
//{
//   int loc=x2+y2*width;
//  float r=red(video.pixels[loc]);
//  float g=green(video.pixels[loc]);
//  float b=blue(video.pixels[loc]);
// if(g>thres && r<thres2 && b<thres2 )
//  {
//    xg=x2;
//    yg=y2;
//    fill(0,0,255,100);
//    ellipse(xg,yg,50,50);
//    break;
//  } 
//}break;  
//}




for ( int x3=0; x3<width; x3++){       //for the blue part 
  for ( int y3=0;y3<height; y3++)
{
   int loc=x3+y3*width;
  float r=red(video.pixels[loc]);
  float g=green(video.pixels[loc]);
  float b=blue(video.pixels[loc]);
 if(b>thres && r<thres2 && g<thres3 )
  {
    xb=x3;
    yb=y3;
    fill(0,0,255,100);
    ellipse(xb,yb,25,25);
    if(b<Thres+75 && b>Thres-75)
    {
    thres=b;
    }
    if(r<Thres2+75 && r>Thres2-75)
    {
    thres=r;
    }
    if(g<Thres3+75 && g>Thres3-75)
    {
    thres=g;
    }
    return;
  
  } 
} 
}
}




//for ( int x4=0; x4<width; x4++){     // for the yellow colour
//  for ( int y4=0;y4<height; y4++)
//{
//   int loc=x4+y4*width;
//  float r=red(video.pixels[loc]);
//  float g=green(video.pixels[loc]);
//  float b=blue(video.pixels[loc]);
//  if(y>thres)
//  {
//    xy=x4;
//    yy=y4;
//    fill(255,255,0,100);
//    ellipse(xy,yy,50,50);
//    break;
//  } 
//}  
//}



//for ( int x5=0; x5<width; x5++){        //for the pink colour
//  for ( int y5=0;y5<height; y5++)
//{
//   int loc=x5+y5*width;
//  float r=red(video.pixels[loc]);
//  float g=green(video.pixels[loc]);
//  float b=blue(video.pixels[loc]);
//  if(g>thres)
//  {
//    xp=x5;
//    yp=y5;
//    fill(255,192,203,100);
//    ellipse(xp,yp,50,50);
//    break;
//  } 
//}  break;
//}


 

void mousePressed(){
 

  
 // video.read();
}

void captureEvent(Capture video){
  video.read();
}