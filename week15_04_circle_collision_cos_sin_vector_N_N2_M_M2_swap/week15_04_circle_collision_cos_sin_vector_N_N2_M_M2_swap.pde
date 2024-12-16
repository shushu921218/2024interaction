//week15_04_circle_collision_cos_sin_vector_N_N2_M_M2_swap
void setup(){
  size(640,360);
}
Ball ball=new Ball(100,200,60);
Ball ball2=new Ball(300,200,60);
void draw(){
  background(51);
  ball.checkCollision(ball2);
  ball.update();
  ball.display();
  ball2.update();
  ball2.display();
}
