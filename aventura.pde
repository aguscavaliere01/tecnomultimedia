void pantalladeinicio (int pantallas, int X, int Y, int posX, int posY) {
  if (pantalla == pantallas) {
    textSize(porcentajeX(20));
    fill(0);
    text(textos[0], porcentajeX(X), porcentajeY(Y));
    text(textos[1], porcentajeX(posX), porcentajeY(posY));
  }
}
void pantallade2(int pantallas, int num1, int num2, int X, int Y, int posX, int posY) {
  if (pantalla==pantallas) {
    fill(0);
    textSize(porcentajeX(20));
    text(textos[num1], porcentajeX(X), porcentajeY(Y));
    fill(0);
    textSize(porcentajeX(17));
    text(textos[num2], porcentajeX (posX), porcentajeY(posY));
  }
}
void pantallade3(int pantallas, int num1, int num2, int num3, int X, int Y, int posX, int posY, int posX2, int posY2) {
  if (pantalla==pantallas) {
    fill(255);
    textSize(porcentajeX(28));
    text(textos[num1], porcentajeX(X), porcentajeY(Y));
    fill(0);
    textSize(porcentajeX(13));
    text(textos[num2], porcentajeX (posX), porcentajeY(posY));

    text(textos[num3], porcentajeX (posX2), porcentajeY(posY2));
  }
}









void pantallacreditos(int pantallas, int num1, int num2, int num3, int X, int Y, int posX, int posY, int posX2, int posY2) {
  if (pantalla == pantallas) {
    fill(255);
    textSize(porcentajeX(40));
    text(textos[num1], porcentajeX(X), porcentajeY(Y));
    fill(255);
    textSize(porcentajeX(25));
    text(textos[num2], porcentajeX (posX), porcentajeY(posY));
    fill(0);
    textSize(porcentajeX(20));
    text(textos[num3], porcentajeX (posX2), porcentajeY(posY2));
    if (porcentajeX(posbaja1) > porcentajeY(250)) {
      posbaja1= posbaja1-2;
      posbajar2=posbajar2 -2;
    }
  }
}
