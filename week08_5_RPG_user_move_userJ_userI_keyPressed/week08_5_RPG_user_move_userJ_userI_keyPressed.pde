int [][] floor={
  {1,1}
};
PImage img,user;
PImage [] fimg=new PImage[40];
void setup(){
  size(600,338);
  img=loadImage("r.jpg");
  user=loadImage("15.png");
  for(int i=1;i<=22;i++) fimg[i]=loadImage(i+".png");
}
int userI=12,userJ=15;
void draw(){
  background(img);
  for(int i=0;i<3;i++){
    for(int j=0;j<20;j++){
      int now=floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  image(user,userJ*32,userI*32);
}
void keyPressed(){
  if(keyCode==RIGHT) userJ++;
  if(keyCode==LEFT) userJ--;
  if(keyCode==UP) userI--;
  if(keyCode==DOWN) userI++;
}
