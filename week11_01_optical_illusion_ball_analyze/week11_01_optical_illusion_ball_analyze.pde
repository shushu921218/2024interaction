//week11_01_optical_illusion_ball_analyze
PImage img=loadImage("ball.png");
size(640,569);//圖檔大小
background(img);
fill(0);
for(float y=21;y<569;y+=13.748){
  for(float x=32;x<640;x+=30){
    ellipse(x,y,12,12);
  }
  //ellipse(32,y,11,11);
  //ellipse(32+30,y,11,11);
}
//ellipse(32,21,11,11);
//ellipse(32,35,11,11);
for(float y=21;y<569;y+=13.748){
  for(float x=2+15;x<640;x+=30){
    ellipse(x,y,12,12);
  }
  //ellipse(32,y,11,11);
  //ellipse(32+30,y,11,11);
}
