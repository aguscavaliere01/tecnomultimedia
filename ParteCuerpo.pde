class ParteCuerpo {

  PImage imagen;
  float posX, posY;
  int tam;
  float vel;

  ParteCuerpo(int posicionX, int posicionY, PImage img) {
    posX = posicionX;
    posY = posicionY;
    tam = 50;
    vel = 6.50;
    imagen= img;
  }
  void dibujar() {
    image(imagen, posX, posY, tam, tam);
    
    posX += vel;
    if (posX<0) {
      vel=vel*-1;
    }
    if (posX+tam>=width) {
      vel=vel*-1;
    }
  }
  void recolecta(int posicion) {
    posX = posicion;
  }
}
