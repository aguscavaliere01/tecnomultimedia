void inicializarImagenes() {
  for (int i=1; i<imagenes. length; i++) {
    imagenes[i] = loadImage( i + ".jpg");
  }
}
