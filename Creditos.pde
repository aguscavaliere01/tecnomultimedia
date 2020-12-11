class Creditos {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  int posY2;

  Creditos(String texto, int posX, int posY) {
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    posY = posY2;
  }

  void dibujar() {
    fill(255);
    textSize(controlador.resize.valorX(20));
    text(texto, posX, posY);
    mover();
  }

  void volverCreditos() {
    if (mouseX > 550 && mouseX < 680 && mouseY > 520 && mouseY < 575) {
      posY = 620;
    }
  } 

  void mover() {
    posY--;
    if (posY < 200) {
      posY++;
    }
  }
} 
