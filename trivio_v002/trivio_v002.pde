// Disseny de la maquetació de l'App TRIVIO
// Establir les zones comunes entre pantalles.

void setup(){
  fullScreen();
  noStroke();
  textAlign(CENTER);
  textSize(18);
}

void draw(){
  
  background(55);
     
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  
  if(mousePressed){
    dibuixaColumna1();
    dibuixaColumna2();
  }
  else {
    dibuixaColumna12();
  }
  dibuixaColumna3();
}
