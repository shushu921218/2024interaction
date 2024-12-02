//week13_3_animated_background_pushMatrix_translate_rotate
PImage img;
void setup(){
  size(500,300);
  img=loadImage("turkey.png");
  imageMode(CENTER);
}
void turkey(int x,int y){
  pushMatrix();
    translate(x,y);
    rotate(radians(frameCount));
    image(img,0,0);
   popMatrix();
}
void draw(){
   background(#FACCEF);
   turkey(mouseX,mouseY);//跟著mouse動
   turkey(100,100);//左上角
   turkey(400,100);//右上角
   turkey(100,200);//左下角
   turkey(400,200);//右下角
}
