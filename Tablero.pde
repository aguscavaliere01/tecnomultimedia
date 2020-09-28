class Tablero {
  int cantidadCeldas = 10;
  Celda [][] celdas = new Celda [cantidadCeldas][cantidadCeldas];
  int tamW = width/cantidadCeldas;
  int tamH = height/cantidadCeldas;

  Tablero() {


    for (int i=0; i<cantidadCeldas; i++) {
      for (int j=0; j<cantidadCeldas; j++) {
        celdas[i][j] = new Celda(i*tamW, j*tamH, tamW, tamH);
      }
    }
  }

  void dibujar() {
    for (int i=0; i<cantidadCeldas; i++) {
      for (int j=0; j<cantidadCeldas; j++) {
        celdas[i][j].dibujar();
      }
    }
  }

  void teclaPresionada() {
  }
}
