class Pinocho {
  int posY, posX;
  int tam;
  PImage pinocho;
  Pinocho(int tamanio, int posicionX, int posicionY) {
    posX = posicionX;
    posY = posicionY; 
    tam = tamanio;  
    pinocho = loadImage("pinocho3.png");
  }
  void dibujar() {

    image(pinocho, posX, posY, tam, tam);
  }
  boolean colision(ParteCuerpo  partecuerpo) {

    if (dist(posX, posY, partecuerpo.posX, partecuerpo.posY) <= tam/2) {
      return true;
    }
    return false;
  }
  void teclaPresionada() {
    if (keyCode == UP) {
      if (posY>=0+tam) {
        posY = posY - 10;
      }
    } else if (keyCode == DOWN) {
      if (posY<=height-tam) {
        posY = posY  + 10;
      }
    }

    if (keyCode == LEFT) {
      if (posX>=0+tam) {
        posX = posX - 10;
      }
    } else if (keyCode == RIGHT) {
      if (posX<=width-tam) {
        posX = posX  + 10;
      }
    }
  }
}
