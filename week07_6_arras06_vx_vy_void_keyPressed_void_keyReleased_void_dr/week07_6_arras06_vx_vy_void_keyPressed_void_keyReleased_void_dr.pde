//week07_6_arras06_vx_vy_void_keyPressed_void_keyReleased_void_draw
//希望移動很順，因為 keyPressed 每秒次數不夠快，要在 void draw() 裡，移動它
//會移動的背景，但是其他要正確運作
void setup(){
  size(500,700);
}
void keyPressed(){ //按下去會有速度，放開後速度要變成0
  if(keyCode==RIGHT) vx=1; //x+=1;
  if(keyCode==LEFT) vx=-1; //x-=1;
  if(keyCode==UP) vy=-1; //y-=1;
  if(keyCode==DOWN) vy=1; //y+=1;
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) vx=0;
  if(keyCode==UP || keyCode==DOWN) vy=0;
}
float x = 250, y=200, vx=0, vy=0; //代表移動的速度
void draw(){
  //background(215,184,200); //紅底
  //stroke(211,180,196); //紅底的線
  x+=vx;
  y+=vy;
  background(219); //灰底
  translate(-x, -y); //讓全世界，都向反方向移動
  translate(width/2, height/2); //把 0,0 移畫面正中心
  float mx = mouseX+x-width/2, my = mouseY+y-height/2; //換算 mx, my 的座標 
  ellipse(mx, my, 8, 8);
  stroke(210); //灰底的線
  strokeWeight(1);
  for(int i=0; i<30; i++){
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }
  float dx = mx-x, dy = my-y; //改用 mx, my
  float a = atan2(dy,dx); //atan2() 算出角度
  line(x, y, mx, my); //改用 mx, my
  myTank(x, y, a);
}
void myTank(float x, float y, float a){
  translate(x, y); //大二下圖學課教的：移動
  rotate(a); //大二下圖學課教的：旋轉
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(3);
  rect(20,-10,20,20);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(0,0,55,55);//圓形的身體
}
