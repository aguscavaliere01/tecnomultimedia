class ContadorVidas {
  int contadorvidas, posX, posY;
  PImage rayos;

  ContadorVidas(int X, int Y) {
    contadorvidas = 3;
    posX = X;
    posY = Y;
    rayos = loadImage("rayos.png");
  }

  void dibujar() {


    fill(0);
    textSize(20);
    text("Resistencia Auto:" + contadorvidas, width-290, height-470);
  }
  void menosVidas() {
    contadorvidas--; 
    if (contadorvidas == 0) {
      textSize(20);
      image(rayos,0,0,400,400);
      if (contadorvidas == 0) {
        contadorvidas = 3;
       
      }
    }
  }
}
