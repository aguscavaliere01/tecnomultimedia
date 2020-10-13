class Jugador {
  int posY, posX;
  int tam;
  PImage auto;
  Jugador(int tamanio, int posicionX, int posicionY) {
    posX = posicionX;
    posY = posicionY; 
    tam = tamanio;  
    auto = loadImage("auto.png");
  }


  void dibujar() {
    image(auto, posX, posY, tam, tam);
  }
  boolean colision(Enemigo enemigo) {

    if (dist(posX, posY, enemigo.posX, enemigo.posY) <= tam) {
      return true;
    }
    return false;
  }
  void teclaPresionada() {
    if (keyCode == UP) {
      posY = posY - 5;
    } else if (keyCode == DOWN) {
      posY = posY  + 5;
    }
  }
}
