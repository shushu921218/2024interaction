PImage img;
void setup(){
  size(600,338);
  img=loadImage("r.jpg");
}
void draw(){
  background(img);
  for(int i=0;i<15;i++){
    for(int j=0;j<20;j++){
      noFill();
      rect(j*32,i*32,32,32);
    }
  }
}
