//week08_1_int_page_if_page_0_1 遊戲的頁面切換
PImage img;
void setup(){
  size(640,480);
  img=loadImage("640x480.png");//圖要自己準備
}

int page=0;//0:開場畫面 1:第1關 2:第2關
void draw(){
  if(page==0){
    background(0);
    textSize(70);
    textAlign(CENTER,CENTER);
    text("Opening",320,240);
  }else if(page==1){
    background(img);
  }
}
void mousePressed(){
  if(page==0) page=1;
}
