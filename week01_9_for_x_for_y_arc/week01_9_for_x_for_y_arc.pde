// week01_9_for_x_for_y_arc
size(400,400);
fill(#9DE6FF);
for(int x=0;x<400;x+=100){
  for(int y=0;y<400;y+=100){
    arc(x+50,y+50,100,100,0+0.5,PI*2-0.5,PIE);//改畫弧度
    //X座標,Y,寬, 高, 開始,結束, 畫蘋果派方法畫
  }
}
