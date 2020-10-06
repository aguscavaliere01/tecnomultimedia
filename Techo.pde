class Techo {
  int posX;
  int posY;
  int tamW;
  int tam;
  int techoo = 0;
  Techo(int p_posX, int p_posY, int p_tamW, int p_tam) {
    this.posX = p_posX;
    this.posY = p_posY;
    this.tamW = p_tamW;
    this.tam = p_tam;
  }
  void dibujar() {
    fill(0, 200, 200);

    rect(this.posX, this.posY, this.tamW, this.tam);
  }
  void aumentoTecho() {
    techo++;
  }
}
