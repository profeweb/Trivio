// Disseny de les pantalles de l'App Trivio v1.5
// Elements comuns: panells d'informació
// Textos de l'APP

// Enumerat de les Pantalles de l'APP
enum PANTALLA {INICI, JUGAR, PUNTS, SOBRE, PREGUNTES, CONFIG};
// Pantalla actual
PANTALLA pantalla = PANTALLA.INICI;

void setup(){
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  
  loadMedia();    // Càrrega dels elements multimèdia
  setGUI();      // Estableix els paràmetres de la GUI
}

void draw(){
  
  image(imgFons, 0, 0, width, height);    //Imatge de fons
  
  // Dibuixa la pantalla corresponent
  switch(pantalla){
    case INICI: dibuixaPantallaInici(); break;
    case JUGAR: dibuixaPantallaJugar(); break;
    case PUNTS: dibuixaPantallaPunts(); break;
    case PREGUNTES: dibuixaPantallaPreguntes(); break;
    case CONFIG: dibuixaPantallaConfig(); break;
    case SOBRE: dibuixaPantallaSobre(); break;
  } 
  
  updateCursor();   // Modifica l'aparença del cursor
  
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  if(bJugar.mouseOverButton() && bJugar.enabled){
    pantalla = PANTALLA.JUGAR;
  }
  else if(bPunts.mouseOverButton() && bPunts.enabled){
    println("Pantalla Punts");
    pantalla = PANTALLA.PUNTS;
  }
  else if(bPreguntes.mouseOverButton() && bPreguntes.enabled){
    pantalla = PANTALLA.PREGUNTES;
  }
  else if(bConfig.mouseOverButton() && bConfig.enabled){
    pantalla = PANTALLA.CONFIG;
  }
  else if(bSobre.mouseOverButton() && bSobre.enabled){
    pantalla = PANTALLA.SOBRE;
  }
}

// Modifica el cursor
void updateCursor(){
  
  if((bJugar.mouseOverButton() && bJugar.enabled)||
     (bPunts.mouseOverButton() && bPunts.enabled)||
     (bPreguntes.mouseOverButton() && bPreguntes.enabled)||
     (bConfig.mouseOverButton() && bConfig.enabled)||
     (bSobre.mouseOverButton() && bSobre.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
}
