void arregloClick() {
  int [] botones1 = {2, 100, 245, 490, 550}; 
  int [] botones2 = {3, 555, 700, 490, 550};
  int [] botones3 = {1, 555, 700, 490, 550}; 
  int [] botones4 = {4, 555, 700, 490, 550}; 
  int [] botones5 = {5, 100, 245, 490, 550}; 
  int [] botones6 = {6, 555, 700, 490, 550};
  int [] botones7 = {11, 555, 700, 490, 550};
  int [] botones8 = {7, 555, 700, 490, 550};
  int [] botones9 = {12, 100, 245, 490, 550}; 
  int [] botones10 = {13, 555, 700, 490, 550};
  int [] botones11 = {14, 555, 700, 490, 550};
  int [] botones12 = {1, 555, 700, 490, 550};
  int [] botones13 = {15, 555, 700, 490, 550};
  int [] botones14 = {16, 555, 700, 490, 550};
  int [] botones15 = {1, 555, 700, 490, 550};
  int [] botones16 = {10, 100, 245, 490, 550}; 
  int [] botones17 = {8, 555, 700, 490, 550};
  int [] botones18 = {7, 100, 245, 490, 550}; 
  int [] botones19 = {9, 555, 700, 490, 550};
  int [] botones20 = {1, 100, 245, 490, 550}; 
  botones[1][0] = botones1;
  botones[1][1] = botones2;
  botones[2][1] = botones3;
  botones[3][1] = botones4;
  botones[4][0] = botones5;
  botones[4][1] = botones6;
  botones[5][1] = botones7;
  botones[6][1] = botones8;
  botones[11][0] = botones9;
  botones[11][1] = botones10;
  botones[12][1] = botones11;
  botones[14][1] = botones12;
  botones[13][1] = botones13;
  botones[15][1] = botones14;
  botones[16][1] = botones15;
  botones[7][0] = botones16;
  botones[7][1] = botones17;
  botones[10][0] = botones18;
  botones[8][1] = botones19;
  botones[9][0] = botones20;
}









void clickeoPantallas() {
  if (mouseX > porcentajeX(botones[pantalla][0][1]) && mouseX < porcentajeX(botones[pantalla][0][2]) && mouseY > porcentajeY(botones[pantalla][0][3]) && mouseY < porcentajeY(botones[pantalla][0][4])) {
    pantalla = botones[pantalla][0][0];
  } else if (botones[pantalla][1].length > 0) { 
    if (mouseX > porcentajeX(botones[pantalla][1][1]) && mouseX < porcentajeX(botones[pantalla][1][2]) && mouseY > porcentajeY(botones[pantalla][1][3]) && mouseY < porcentajeY(botones[pantalla][1][4])) {
      pantalla = botones[pantalla][1][0];
    }
  }
}
