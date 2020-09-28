
class Celda {
  int posX=0;
  int posY=0;
  int tamX= width-350;
  int tamY= height-350;
  Celda (int cantX, int cantY, int tamanoW, int tamanoH){
    posX= cantX;
    posY= cantY;
    tamX= tamanoW;
    tamY= tamanoH;
  }


  void dibujar() {
    rect(posX, posY, tamX, tamY);
  }
}
