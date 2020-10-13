class Enemigo {
  
  int cantidadPiedras = 10;
  int posX, posY, tam;
  float vel;
  Enemigo(int posicionX, int posicionY, int tamanio) {
    posX = posicionX;
    posY = posicionY;
    tam = tamanio;
    vel = 1.05;
  }
  void dibujar() {

    fill(200);
    ellipse(posX, posY, tam, tam);
    posX-= vel;
  }
  void Resismenos(int posicion){
    posX = posicion;
     
   }
}
