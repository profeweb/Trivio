// Botons del Menú Principal

enum PANTALLA {INICI, JUGAR, PUNTS, SOBRE, PREGUNTES, CONFIG};
PANTALLA pantalla = PANTALLA.INICI;

void setup(){
  size(1800, 1080);  
  loadMedia();
  setGUI();
}

void draw(){
  
  image(imgFons, 0, 0, width, height);
  
  switch(pantalla){
    case INICI: dibuixaPantallaInici(); break;
    case JUGAR: dibuixaPantallaJugar(); break;
    case PUNTS: dibuixaPantallaPunts(); break;
    case PREGUNTES: dibuixaPantallaPreguntes(); break;
    case CONFIG: dibuixaPantallaConfig(); break;
    case SOBRE: dibuixaPantallaSobre(); break;
  } 
  
  updateCursor();
  
}

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
