//week09_2_PFont_outside_void_setup_createFont_void_draw_text
PFont font0,font,font2;//3種字形:英文、中文、注音文(外面宣告，兩個函式都看得到)
void setup(){
  size(500,500);
  font0=createFont("Arial",50);
  font=createFont("標楷體",50);
  font2=createFont("elffont-rock.otf",50);
}
void draw(){
  background(0);
  textSize(50);
  //PFont font0=createFont("Arial",50);不能寫在裡面
  textFont(font0);
  text("Hello",50,50);

  //PFont font=createFont("標楷體",50);
  textFont(font);
  text("中文看到了",50,150);
  
  //PFont font2=createFont("elffont-rock.otf",50);
  textFont(font2);
  text("ㄨㄛˇ ㄞˋ ㄋㄧˇ ",50,250);
}
