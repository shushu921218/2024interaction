//week07_1_arras01_background_fill_stroke_ellipse_rect_line
void setup(){
  size(500,700);
}
float x = 250, y=200;
void draw(){
  background(215,184,200);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(3);
  rect(240,160,20,20);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(x,y,55,55);//圓形的身體
  
  line(x,y,mouseX,mouseY);
}
