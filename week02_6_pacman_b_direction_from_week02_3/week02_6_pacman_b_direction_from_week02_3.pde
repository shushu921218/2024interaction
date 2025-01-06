//week02_6_pacman_b_direction_from_week02_3
void setup(){
  size(400,400);
}
void draw(){
  background(255);
  fill(#F0B8E8);
  float a = frameCount % 180;
  float b = radians(mouseX);
  if(a<45) a = radians(a);
  else if(a<90) a = radians(90-a);
  else if(a<135) a = radians(a-90);
  else if(a<180) a = radians(180-a);
  arc(200, 200, 300, 300, b+0+a, b+PI*2-a, PIE);
}
