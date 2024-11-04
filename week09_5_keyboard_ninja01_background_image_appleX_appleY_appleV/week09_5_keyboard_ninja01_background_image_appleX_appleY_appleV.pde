//week09_5_keyboard_ninja01_background_image_appleX_appleY_appleVX_appleVY_g
PImage board;//外面宣告變數
void setup(){
  size(600,400);
  board=loadImage("board.png");//裡面修改變數
}
float appleX=100,appleY=500,appleVX=3,appleVY=-30;
void draw(){
  background(board);//裡面使用變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色的蘋果
  appleX+=appleVX;//照著運動速度，X往右移
  appleY+=appleVY;//照著運動速度，Y也會移動
  appleVY+=0.98;//0.98 gravity 重力加速度
  if(appleX>600){
    appleX=100;appleY=500;appleVX=5;appleVY=-30;
  }
}
