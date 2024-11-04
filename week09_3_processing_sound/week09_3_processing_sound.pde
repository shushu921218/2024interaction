//week09_3_processing_sound 聲音相關 使用音樂相關的Library函式庫
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound=new SoundFile(this,"In Game Music.mp3");
  //sound.play();//撥放1次
  sound.loop();//一直迴圈撥放
}
void draw(){
  
}
