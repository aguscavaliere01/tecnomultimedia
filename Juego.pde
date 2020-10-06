class Juego {
  Jugador jugador;
  Enemigo enemigo;
  Contador contador;
  Techo techo;
  int cantidadObjetos = 10;
  int tam = width/cantidadObjetos;
  int posX = tam * (cantidadObjetos/2);

  Juego() {

    enemigo = new Enemigo();
    jugador = new Jugador(posX, width-tam, tam, tam);
    contador = new Contador(50, 50);
    techo = new Techo(0, 0, width, 0 * tam);
  }

  void dibujar() {
    enemigo.dibujar();
    jugador.dibujar();
  }
  void teclaPresionada() {
    jugador.teclaPresionada();
  }
}
  
