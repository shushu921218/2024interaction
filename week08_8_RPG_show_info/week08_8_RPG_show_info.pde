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
  image(user,16,16);
  textSize(30);
  text("Level: " + level,16,90);
  textSize(20);
  text("Live: " + live,16,140);
  text("Attack: " + attack,16,170);
  text("Defense: " + defense,16,200);
  text("Magic: " + magic,16,230);
  text("Exp: " + exp,16,260);
  text("Coins: " + coin,16,290);
  image(user,userJ*32,userI*32);
  if(gameOver) background(0,255,0);
}
int level=1,live=2693,attack=14,defense=16,magic=10,exp=72,coin=72;
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
    if(floor[userI][userJ]==21) gameOver=true;
    floor[userI][userJ]=2;
  }
}
