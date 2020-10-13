class Juego {
  PImage ruta;
  int tam = height/10;
  Jugador jugador;
  Enemigo [] posEnemigo = new Enemigo [800];
ContadorVidas contadorvidas;
  Juego() {
    for (int i = 0; i < 800; i ++) {
      posEnemigo[i] = new Enemigo(i*tam, round(random(-700, height)), 20);
      loop();
    }   

    jugador = new Jugador(100, 150, 520);
    contadorvidas = new ContadorVidas(25, 30);
  }

  void dibujar() {
    ruta = loadImage("ruta.jpg");
    image(ruta, 0, 0, width, height);
    for (int i = 0; i < 800; i ++) {
      posEnemigo[i].dibujar();
      if (jugador.colision(posEnemigo[i])) {
        posEnemigo[i].Resismenos(round(random(-700, height)));
        contadorvidas.menosVidas();
      }
    }

        jugador.dibujar();
        contadorvidas.dibujar();
  }
    

    void teclaPresionada() {
      jugador.teclaPresionada();
    }
  }
  
