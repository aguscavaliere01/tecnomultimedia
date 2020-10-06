class Enemigo {
  Techo techo;
  Contador contador;

  int cantidadObjetos = 10;
  int [] objetosPosY = new int [cantidadObjetos];
  int velocidad = 1;
  int techoo = 0;
  Enemigo() {
    techo = new Techo(0, 0, width, 0 * tam);
    contador = new Contador(50, 50);
    for (int i=0; i < cantidadObjetos; i++ ) {
      objetosPosY[i] = generarPosicionObjeto();
    }
  }
  void dibujar() {
    int posX, tam;
    tam = width/cantidadObjetos;
    posX = tam * (cantidadObjetos/2);
    contador.dibujar();
    techo.dibujar();
    for (int i=0; i < cantidadObjetos; i++ ) {
      objetosPosY[i]+=velocidad;
      ellipse(i*tam + tam/2, objetosPosY[i], tam/2, tam/2);

      if (objetosPosY[i] >= height ) {
        objetosPosY[i] = generarPosicionObjeto();
        techo.aumentoTecho();
      }
      if (dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2) {
        objetosPosY[i] = generarPosicionObjeto();
        contador.sumarpuntos();
        
        
      }
    }
  }

  int generarPosicionObjeto() {
    return round(random(-1000, techoo * tam));
  }
}
