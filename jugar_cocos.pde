Juego juego;

int posX, tam;
int contador = 0;
int techo = 0;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
int velocidad = 1;

void setup() {
  size(400, 400);
  textSize(26);

  juego = new Juego();

  tam = width/cantidadObjetos;
  posX = tam * (cantidadObjetos/2);
}

void draw() {
  background(200);

  juego.dibujar();
  fill(0);
  rect(0, 0, width, techo * tam);

  fill(255, 0, 0);
  text("Contador:"+ contador, 50, 50);
}
void keyPressed() {
  juego.teclaPresionada();
}

int generarPosicionObjeto() {
  return round(random(-1000, 0 * tam));
}
