class Contador {
  int posX;
  int posY;
  int contador = 0;
  Contador(int p_posX, int p_posY) {
    this.posX = p_posX;
    this.posY = p_posY;
  }
  void dibujar() {
    fill(255, 0, 0);
    text("Contador:"+ contador, this.posX, this.posY);
  } 
  void sumarpuntos() {
    contador++;
  }
}
