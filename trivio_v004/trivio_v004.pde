// Disseny de les pantalles de l'App Trivio v1.4
// Elements comuns: botons del Menú Principal

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
  
  image(imgFons, 0, 0, width, height);   //Imatge de fons
  
  // Dibuixa la pantalla corresponent
  switch(pantalla){
    case INICI: dibuixaPantallaInici(); break;
    case JUGAR: dibuixaPantallaJugar(); break;
    case PUNTS: dibuixaPantallaPunts(); break;
    case PREGUNTES: dibuixaPantallaPreguntes(); break;
    case CONFIG: dibuixaPantallaConfig(); break;
    case SOBRE: dibuixaPantallaSobre(); break;
  } 
  
  String infoPantalla = pantalla.ordinal()+" ) "+pantalla.name();
  text(infoPantalla, width/2, height/2);  // Número i nom de la Pantalla
  
  updateCursor();   // Modifica l'aparença del cursor
  
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  if(bJugar.mouseOverButton() && bJugar.enabled){
    pantalla = PANTALLA.JUGAR;
    audio1.play();
  }
  else if(bPunts.mouseOverButton() && bPunts.enabled){
    println("Pantalla Punts");
    pantalla = PANTALLA.PUNTS;
    audio1.play();
  }
  else if(bPreguntes.mouseOverButton() && bPreguntes.enabled){
    pantalla = PANTALLA.PREGUNTES;
    audio1.play();
  }
  else if(bConfig.mouseOverButton() && bConfig.enabled){
    pantalla = PANTALLA.CONFIG;
    audio1.play();
  }
  else if(bSobre.mouseOverButton() && bSobre.enabled){
    pantalla = PANTALLA.SOBRE;
    audio1.play();
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
