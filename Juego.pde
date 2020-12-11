class Juego {

  int estado;
  VideoJuego videojuego;
  int tam = height/10;



  Juego() {
    inicializar();
  }

  void dibujar() {
    if (estado == 0) {
      
    } else if (estado == 1) {
      dibujoVideoJuego();
    } else if (estado == 2) {
      controlador.pantallaActual = controlador.pantallas[7];
      inicializar();
    } else if (estado == 3) {
      controlador.pantallaActual = controlador.pantallas[9]; 
      inicializar();
    }
  }



  void teclaPresionada() {
    if (estado == 0) {
      estado = 1;
    } else if (estado == 1) {
      videojuego.teclaPresionada();
    } 
    }
  

  void dibujoVideoJuego() {
    background(200);
    videojuego.dibujar();
    //Controlar Ganar o Perder
    if (videojuego.controlarGanarOPerder() == 1) {
      estado = 2;
    } else if (videojuego.controlarGanarOPerder() == 2) {
      estado = 3;
    }
  }

  void inicializar() {
    videojuego = new VideoJuego(0, 100, 200, 200);
    estado = 1;
  }
}
