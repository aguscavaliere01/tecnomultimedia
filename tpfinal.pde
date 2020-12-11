import processing.sound.*;
Controlador controlador;


void setup(){
  size(800,600);
  controlador = new Controlador(this);
}

void draw(){
  background(200);
  controlador.dibujar();
}

void mouseClicked(){
  controlador.mouseClicked();
}
void keyPressed() {
  controlador.keyPressed();
}  
