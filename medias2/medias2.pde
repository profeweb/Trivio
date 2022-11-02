
void setup(){
  // Dimensions de l'App
  size(1400, 800);
  
  // Inicialitza els medias de l'App
  setVectors();
  
}


void draw(){
  
  // Dibuixa el fons (blanc)
  background(255);
  
  // Dibuixa icona warning
  displayWarning(width/4, height/2, midaIcona, midaIcona);
  
  // Dibuixa icona error
  displayError(width/2, height/2, midaIcona, midaIcona);
  
  // Dibuixa icona info
  displayInfo(3*width/4, height/2, midaIcona, midaIcona);
  
}
