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

    image(pinocho, controlador.resize.valorX(posX), controlador.resize.valorY(posY), controlador.resize.valorX(tam), controlador.resize.valorY(tam));
  }
  boolean colision(ParteCuerpo  partecuerpo) {

    if (dist(controlador.resize.valorX(posX), controlador.resize.valorY(posY), partecuerpo.posX, partecuerpo.posY) <= tam/2) {
      return true;
    }
    return false;
  }
  void teclaPresionada() {
    if (keyCode == UP) {
      if (controlador.resize.valorY(posY)>=0+tam) {
        posY = posY - 10;
      }
    } else if (keyCode == DOWN) {
      if (controlador.resize.valorY(posY)<=height-tam) {
        posY = posY  + 10;
      }
    }

    if (keyCode == LEFT) {
      if (posX>=0+tam) {
        posX = posX - 10;
      }
    } else if (keyCode == RIGHT) {
      if (controlador.resize.valorX(posX)<=width-tam) {
        posX = posX  + 10;
      }
    }
  }
}
