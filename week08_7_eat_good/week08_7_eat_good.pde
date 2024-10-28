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
  if(gameOver) background(0,255,0);
}
boolean gameOver=false;
void keyPressed(){
  int newI=userI,newJ=userJ;
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3){
    userI=newI;
    userJ=newJ;
    if(floor[userI][userJ]=21) gameOver=true;
    floor[userI][userJ]=2;
  }
}
