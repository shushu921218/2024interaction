//week13_4_PShape_gundam_loadShape_shape_obj_mtl_jpg
PShape gundam;
void setup(){
  size(500,500,P3D);//小心P3D
  gundam=loadShape("Gundam.obj");
}
void draw(){
  shape(gundam,0,0,250,500);
}
