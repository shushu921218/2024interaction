//week09_7_keyboard_ninja04_void_keyPressed_appleKey
PImage board;//外面宣告變數
void setup(){
  size(600,400);
  board=loadImage("board.png");//裡面修改變數
  randomApple();
}
float appleX=100,appleY=500,appleVX=3,appleVY=-30;
char appleKey;
void randomApple(){
  appleX=random(100,500);
  appleY=500;
  if(appleX<300) appleVX=random(0,8);
  else appleVX=random(-8,0);
  appleVY=random(-30,-25);
  appleKey=(char)('a'+int(random(26)));
}
void draw(){
  background(board);//裡面使用變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色的蘋果
  fill(255,255,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text(appleKey,appleX,appleY);
  appleX+=appleVX;//照著運動速度，X往右移
  appleY+=appleVY;//照著運動速度，Y也會移動
  appleVY+=0.98;//0.98 gravity 重力加速度
  if(appleX>600 || appleX<0 || appleY>550){
    randomApple();
  }
}
