
void setup(){
  // Dimensions de l'App
  size(1400, 800);
  
  // Inicialitza els medias de l'App
  setMedias();
  
}


void draw(){
  
  // Dibuixa el fons (blanc)
  background(255);
  
  // Dibuixa el banner
  displayBanner(0, 0, width, height);
  
  // Dibuixa el logo
  displayLogo(50, 50, midaLogo, midaLogo);
  
  // Dibuixa la icona
  displayIcon(300, 300, midaIcona, midaIcona);
  
}
