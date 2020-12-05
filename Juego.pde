class Juego {
  PImage fin;
  PImage Inicio;
  PImage Perder;
  int estado;
  VideoJuego videojuego;
  int tam = height/10;



  Juego() {
    inicializar();
    fin = loadImage("fin.jpg");
    Inicio = loadImage("Inicio.jpg");
    Perder = loadImage("Perder.jpg");
  }

  void dibujar() {
    if (estado == 0) {
      dibujoPantallaInicio("Presiona una Tecla para iniciar \nRecolecta 4 partes del cuerpo \nantes de que se acabe el tiempo");
    } else if (estado == 1) {
      dibujoVideoJuego();
    } else if (estado == 2) {
      dibujoGane("Te has convertido en un niño real \nFelicitaciones!!");
    } else if (estado == 3) {
      dibujoFin("No has logrado cumplir \n    con las ordenes!");
    }
  }



  void teclaPresionada() {
    if (estado == 0) {
      estado = 1;
    } else if (estado == 1) {
      videojuego.teclaPresionada();
    } else if (estado == 2) {
      inicializar();
    } else if (estado == 3) {
      inicializar();
    }
  }
  void dibujoPantallaInicio(String mensaje) {
    background(0, 255, 0);
    image(Inicio, 0, 0, width, height);

    textSize(20);
    fill(255, 245, 5);
    text(mensaje, width/2+70, height/2);
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
  void dibujoFin(String mensaje) {
    background(200);
    image(Perder, 0, 0, width, height);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text(mensaje, width/2, height/2);
    text("Presiona una Tecla para reiniciar", width/2, height/2 + 100);
  }
  void dibujoGane(String mensaje) {
    background(200);
    image(fin, 0, 0, width, height);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text(mensaje, width/2, height/2);
    text("Presiona una Tecla para reiniciar", width/2, height/2 + 100);
  }
  void inicializar() {
    videojuego = new VideoJuego(0, 100, 200, 200);
    estado = 0;
  }
}
