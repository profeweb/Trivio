// Disseny de les pantalles de l'App Trivio

int numPantalla = 1;

void setup(){
  fullScreen();
  noStroke();
  textAlign(CENTER);
  textSize(18);
}

void draw(){
  
  background(55);
  
  switch(numPantalla){
    case 1: dibuixaPantalla01(); break;
    case 2: dibuixaPantalla02(); break;
  }  
  
  fill(255);
  text("PANTALLA "+numPantalla, width-100, 50);
}

void keyPressed(){
  if(keyCode==UP){
    numPantalla++;
  }
  else if(keyCode==DOWN){
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 2);
}
