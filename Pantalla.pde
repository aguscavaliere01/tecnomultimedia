class Pantalla {
  Boton[] botones;
  PImage fondo; 
  PFont fuente;
  Boton boton1; 
  Boton boton2;
  String textoPantalla; 
  Juego juego;
  Creditos creditos;

  Pantalla(PImage fondo, String textoPantalla, Boton boton1, Boton boton2, Juego juego, Creditos creditos) {
    this.fondo = fondo;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.juego = juego;
    fuente = loadFont("PalatinoLinotype-Italic-48.vlw");
    this.creditos = creditos;
  }

  void dibujar() {
    image(this.fondo, 0, 0, width, height);
    textFont(fuente);
    fill(0);
    textSize(controlador.resize.valorX(20));




    text(this.textoPantalla,controlador.resize.valorX(50), controlador.resize.valorY(100));

    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }
    if (creditos != null) {
      creditos.dibujar();
    }
    if (juego != null) {
      juego.dibujar();
    }
  }

  int mouseClicked() {
    int pantallaAIr = -1;

    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    }

    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }

    return pantallaAIr;
  }
}
