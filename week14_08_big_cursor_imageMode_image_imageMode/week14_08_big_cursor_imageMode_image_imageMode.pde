//week14_08_big_cursor_imageMode_image_imageMode
PImage imgBigCute,imgBigKitty,imgCursor;
void setup(){
  size(500,500);
  imgBigCute=loadImage("bigcute.png");
  imgBigKitty=loadImage("bigkitty.png");
  imgCursor(imgBigKitty);
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(imgCursor,mouseX,mouseY);
  imageMode(CORNER);
  if(frameCount%120==0) cursor(imgBigCute);
  if(frameCount%120==60) cursor(imgBigKitty);
}
