class VideoJuego {
  PImage nariz;
  PImage ojos;
  PImage pelo;
  PImage boca;

  int posX, posY, tamX, tamY; 
  int tam;
  PFont letra ;
  PImage camino;
  Pinocho pinocho;
  

  Contador contador;
  TiempoRestante tiemporestante;
  ParteCuerpo []partecuerpo;


  VideoJuego(int posicionX, int posicionY, int tamanioX, int tamanioY) {
    posX = posicionX;
    posY = posicionY;
    tamX = tamanioX;
    tamY = tamanioY;
    nariz = loadImage("nariz.png");
    ojos = loadImage("ojos.png");
    pelo = loadImage("pelo.png");
    boca = loadImage("boca.png");
    inicializar();
  }


  void dibujar() {
    dibujoVideoJuego();
  }
  void teclaPresionada() {
    pinocho.teclaPresionada();
  }

  void dibujoVideoJuego() {
    camino = loadImage("camino.jpg");
    image(camino, 0, 0, width, height);

    textFont(loadFont("PalatinoLinotype-Italic-48.vlw"));
    for (int i=0; i<partecuerpo.length; i++) {

      if (pinocho.colision(partecuerpo[i])) {
        partecuerpo[i].recolecta(width*2);
        contador.disminuir();
      }
    }

    pinocho.dibujar();
    
    contador.dibujar();
    tiemporestante.dibujar();
    controlarGanarOPerder();
    for (int i=0; i<partecuerpo.length; i++) {
      partecuerpo[i].dibujar();
    }
  }
  int controlarGanarOPerder() {
    if (contador.haGanado()) {
      return 1; //Ganar
    } else if (tiemporestante.haPerdido()) {
      return 2; // Perder
    }
    return 0; //No pasó nada
  }
  void inicializar() {
    pinocho = new Pinocho(100, 80, 500);
    
    contador = new Contador(50, 50);
    tiemporestante= new TiempoRestante (50, 50);
    partecuerpo=new ParteCuerpo [4];
    partecuerpo[0]=new ParteCuerpo (200, 100, nariz);
    partecuerpo[1]=new ParteCuerpo (200, 200, ojos);
    partecuerpo[2]=new ParteCuerpo (200, 300, pelo);
    partecuerpo[3]=new ParteCuerpo (200, 400, boca);
  }
}
