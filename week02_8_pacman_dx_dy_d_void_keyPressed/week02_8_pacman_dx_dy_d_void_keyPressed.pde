//week02_8_pacman_dx_dy_d_void_keyPressed
void setup(){
  size(400,400);
}
int x=200, y=200, d=0;
void draw(){
  background(255);
  fill(#F0B8E8);
  float a=0.5;
  int []dx = {1, 0, -1, 0}; //x++, x, x--, x
  int []dy = {0, 1, 0, -1}; //y++, y, y--, y
  x += dx[d];
  y += dy[d];
  arc(x, y, 100, 100, PI/2*d+a, PI/2*d + PI*2-a, PIE);
}
void keyPressed(){
  if(keyCode==RIGHT) d=0;
  if(keyCode==DOWN) d=1;
  if(keyCode==LEFT) d=2;
  if(keyCode==UP) d=3;
}
