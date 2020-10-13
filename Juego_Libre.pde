Juego juego;
void setup(){
 size(400,600); 
 juego = new Juego();
}

void draw(){
juego.dibujar();
  
  
}


void keyPressed(){
  
juego.teclaPresionada();
  
}
