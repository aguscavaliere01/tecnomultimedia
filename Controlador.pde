class Controlador {
  Pantalla pantallaActual;
  SoundFile cancion;
  int cantidadPantallas = 16;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] fondos = new PImage [cantidadPantallas];
  Textos textos = new Textos();
  Juego juego;
  Creditos creditos;
  Resize resize;

  Controlador(PApplet musica) {
    int pantalla;
    Boton boton1, boton2;
    cancion = new SoundFile(musica, "pinocho.mp3");
    cancion.play();

    cargarFondos();

    pantallas = new Pantalla [cantidadPantallas];
    resize = new Resize();
    //Creo la pantalla 1
    pantalla = 0;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(100), resize.valorY(490), 1);
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 2);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null,null);

    //Creo la pantalla 2
    pantalla = 1;

    creditos= new Creditos (textos.getTextoParaPantalla(pantalla), resize.valorX(25), resize.valorY(600));
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], "", null, boton2, null,creditos);

    //Creo la pantalla 3
    pantalla = 2;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 3);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 3;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(100), resize.valorY(490), 4);
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 5);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null,null);

    pantalla = 4;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 10);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 5;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 6);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 6;
    juego = new Juego();
    //boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(100), resize.valorY(490), 9);
    //boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 7);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, null, juego,null);

    pantalla = 10;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(100), resize.valorY(490), 11);
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 12);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null,null);

    pantalla = 11;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 13);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 13;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);


    pantalla = 12;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 14);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 14;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 15);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 15;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 9;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 0), resize.valorX(555), resize.valorY(490), 6);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 7;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(555), resize.valorY(490), 8);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null,null);

    pantalla = 8;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 0), resize.valorX(555), resize.valorY(490), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null, null);




    pantallaActual=pantallas[0];
  }



  void dibujar() {
    pantallaActual.dibujar();
  }








  void cargarFondos() {

    for (int i=0; i<cantidadPantallas; i++) {
      fondos[i] = loadImage( i + ".jpg");
    }
  }

  void mouseClicked() {
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
    if (pantallaActual == pantallas[6]) {
      juego.teclaPresionada();
    }
    creditos.volverCreditos();
    if (pantallaAIr == 0) {
      juego.estado = 1;
    }
  }
    void keyPressed () {
      if (pantallaActual == pantallas[6]) {
        juego.teclaPresionada();
      }
    }

    
  }
  
