// Disseny de les pantalles de l'App Trivio v1.3

int numPantalla = 1;  // Número de la Pantalla Actual

void setup(){
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  noStroke();              // Sense bordes
  textAlign(CENTER);       // Alineació del text
  textSize(18);            // Mida del text
}

void draw(){
  
  background(55);    // Color del fons
  
  switch(numPantalla){
    case 1: dibuixaPantalla01(); break;
    case 2: dibuixaPantalla02(); break;
  }  
  
  fill(255);
  text("PANTALLA "+numPantalla, width-100, 50);
  
  text("X: "+mouseX+", Y:"+mouseY, width-100, 100);
}

// Canvi de Pantalla amb tecles UP i DOWN
void keyPressed(){
  if(keyCode==UP){
    numPantalla++;
  }
  else if(keyCode==DOWN){
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 2);
}
