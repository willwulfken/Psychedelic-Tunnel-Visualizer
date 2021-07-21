float size=200;
float posX=0,posY=0;

void setup(){
   size(600,600,P2D);
   rectMode(IMAGE);
   rect(width/2,height/2,200,200);
}

void draw(){
  textureMode(NORMAL);
  rotate(.03);
  posX+=random(-1,1);
  posY+=random(-1,1);
  
  PImage img=get();
  beginShape(QUAD);
  stroke(random(0,255),random(0,255),random(0,255));
  texture(img);
  float min=-5,max=5;
  vertex(width/2-1*size+random(min,max)+posX,height/2-1*size+random(min,max)+posY,0,0);
  vertex(width/2+1*size+random(min,max)+posX,height/2-1*size+random(min,max)+posY,1,0);
  vertex(width/2+1*size+random(min,max)+posX,height/2+1*size+random(min,max)+posY,1,1);
  vertex(width/2-1*size+random(min,max)+posX,height/2+1*size+random(min,max)+posY,0,1);
  endShape();
  
  img=get();
  beginShape(QUAD);
  stroke(random(0,255),random(0,255),random(0,255));
  texture(img);
  vertex(width/2-1*size-width/3+posX,height/2-1*size-height/3+posY,0,0);
  vertex(width/2+1*size+width/3+posX,height/2-1*size-height/3+posY,1,0);
  vertex(width/2+1*size+width/3+posX,height/2+1*size+height/3+posY,1,1);
  vertex(width/2-1*size-width/3+posX,height/2+1*size+height/3+posY,0,1);
  endShape();
}