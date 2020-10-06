class Jugador {
  int posX;
  int posY;
  int tam;
  int tamW;

  Jugador(int p_posX, int p_posY, int p_tamW, int p_tam) {
    this.posX = p_posX;
    this.tam = p_tam;
    this.tamW = p_tamW;
    this.posY = p_posY;
  }
  void dibujar() {
    fill(255, 0, 80);
    rect(this.posX, this.posY, this.tamW, this.tam);
  }
  void teclaPresionada() {

    if (keyCode == LEFT) {
      posX = posX - tam;
    } else if (keyCode == RIGHT) {
      posX = posX + tam;
    }
  }
}
