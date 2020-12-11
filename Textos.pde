class Textos {
  String textosPantallas [];
  String textosPantallaBotones [][];

  Textos() {
    textosPantallas = new String [16];
    textosPantallaBotones = new String [16][2];

    inicializarTextosPantallas();
    inicializarTextosBotones();
  }

  void inicializarTextosPantallas() {
    textosPantallas[0] = "";
    textosPantallas[1] = "Autor base: Carlo Collodi \nCreador Aventura Gráfica: Cavaliere Agustín \nPersonajes Principales:  \nPinocho \nGeppetto \nHada Azul \nPersonajes Secundarios: \nTiburón \nZorro \nGato";
    textosPantallas[2] = "Gepetto era un viejo carpintero, deseaba que su última creación,\n    Pinocho, una marioneta de madera, fuera su hijo y se\n      convirtiera en un niño de verdad";
    textosPantallas[3] = "Geppeto le consulta al Hada Azul \n para ver que debía hacer";
    textosPantallas[4] = "Pinocho debía ser generoso, obediente y sincero, \n pero resulta ser todo lo contrario, es decir, \n travieso, insensato y mentiroso";
    textosPantallas[5] = "Pinocho es una marioneta \n de madera, pero Gepetto \n querrá hacer algo";
    textosPantallas[6] = "Geppeto deberá educarlo de buena forma, \n para que Pinocho deje de mentir y \n se comporte de buena manera ";
    textosPantallas[7] = "Geppeto educa de buena forma a Pinocho \n y logra que el Hada lo convierta \n en un niño real";
    textosPantallas[8] = "Pinocho se comporta de buena manera y mantiene \n una vida muy linda junto a su padre \n trabajando en una juguetería como \n dueño de la misma";
    textosPantallas[9] = "El Hada Azul se enfurece \n con Gepetto por \n su mala educación";
    textosPantallas[10] = "Pinocho si quiere ser un niño real \n deberá superar algunas aventuras";
    textosPantallas[11] = "Pinocho logra ser una gran persona y deja de \n mentir, por lo tanto, ya es un niño.";
    textosPantallas[12] = "Pinocho es engañado por el zorro y el gato, \n además le mintió muchas veces al Hada ";
    textosPantallas[13] = "El Hada Azul convierte a Pinocho en un niño \n real tras comportarse muy bien.";
    textosPantallas[14] = "En el fondo Pinocho es muy valiente \n y tiene un buen corazón";
    textosPantallas[15] = "En una de esas aventuras, Pinocho se encuentra \n dentro del tiburón con Geppeto y gracias a la marioneta \n logran huir del salvaje animal. A partir de esta \n gran acción Pinocho logra convertirse \n en un niño de verdad";
  }

  void inicializarTextosBotones() {
    textosPantallaBotones[0][0] = "Ver creditos";
    textosPantallaBotones[0][1] = "Inicio";
    textosPantallaBotones[1][1] = "Volver al inicio";
    textosPantallaBotones[2][1] = "Continuar aventura";
    textosPantallaBotones[3][0] = "Que sea un niño \n travieso, insensato \n y  mentiroso ";
    textosPantallaBotones[3][1] = "Que continúe siendo \n una marioneta \n de madera ";
    textosPantallaBotones[4][1] = "Continuar aventura";
    textosPantallaBotones[5][1] = "Continuar aventura";
    textosPantallaBotones[7][1] = "Continuar aventura";
    textosPantallaBotones[8][0] = "Volver al inicio";
    textosPantallaBotones[9][0] = "Volver al \ncamino anterior";
    textosPantallaBotones[6][0] = "El Hada Azul se enfurece \n con Gepetto por \n su mala educación";
    textosPantallaBotones[6][1] = "El Hada Azul cree que ya \n esta en condiciones para \n que sea  un niño educado";
    textosPantallaBotones[10][0] = "Que Pinocho \n no mienta más \n y sea sincero";
    textosPantallaBotones[10][1] = "Que Pinocho sea engañado \n por personajes malos \n y siga mintiendo";
    textosPantallaBotones[11][1] = "Continuar aventura";
    textosPantallaBotones[12][1] = "Continuar aventura";
    textosPantallaBotones[13][1] = "Volver al inicio";
    textosPantallaBotones[14][1] = "Continuar historia";
    textosPantallaBotones[15][1] = "Volver al inicio";
  }

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }

  String getTextoParaPantalla(int pantalla) {
    return textosPantallas[pantalla];
  }
}
