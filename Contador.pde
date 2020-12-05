class Contador {
  int contador, posX, posY;

  Contador(int posicionX, int posicionY) {
    contador = 4;
    posX = posicionX;
    posY = posicionY;
  }
  void dibujar() {
    textSize(30);
    fill(random(0, 255), random(0, 255), random(0, 255));
    text("Objetos \nA recolectar: "+ contador, posX+550, posY+500);
   
  }

  void disminuir() {
    contador--;
  }
  boolean haGanado(){
    return contador == 0;
  }
}
