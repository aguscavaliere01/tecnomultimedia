class Contador {
  int contador, posX, posY;

  Contador(int posicionX, int posicionY) {
    contador = 4;
    posX = posicionX;
    posY = posicionY;
  }
  void dibujar() {
    textSize(controlador.resize.valorX(30));
    fill(random(0, 255), random(0, 255), random(0, 255));
    text("Objetos \nA recolectar: "+ contador, controlador.resize.valorX(posX+550), controlador.resize.valorY(posY+500));
   
  }

  void disminuir() {
    contador--;
  }
  boolean haGanado(){
    return contador == 0;
  }
}
