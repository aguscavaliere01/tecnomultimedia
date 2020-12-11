class TiempoRestante {
  int tiemporestante, posX, posY;

  TiempoRestante(int posicionX, int posicionY) {
    tiemporestante= 400;
    posX = posicionX;
    posY = posicionY;
  }


  void dibujar() {
    textSize(controlador.resize.valorX(25));
    fill(255, 247, 5);
    text("Tiempo Restante:" + tiemporestante, controlador.resize.valorX(posX+270), controlador.resize.valorY(posY+520));
    if (tiemporestante>=0) {
      tiemporestante--;
    }
  }


  boolean haPerdido() {
    return tiemporestante == 0;
  }
}
