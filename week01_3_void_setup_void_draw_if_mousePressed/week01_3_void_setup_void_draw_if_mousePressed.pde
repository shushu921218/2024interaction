// week01_3_void_setup_void_draw_if_mousePressed
void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) background(255, 0, 0);
  else background(0, 255, 0);
}
