class TiempoRestante {
  int tiemporestante, posX, posY;

  TiempoRestante(int posicionX, int posicionY) {
    tiemporestante= 400;
    posX = posicionX;
    posY = posicionY;
  }


  void dibujar() {
    textSize(25);
    fill(255, 247, 5);
    text("Tiempo Restante:" + tiemporestante, posX+270, posY+520);
    if (tiemporestante>=0) {
      tiemporestante--;
    }
  }


  boolean haPerdido() {
    return tiemporestante == 0;
  }
}
