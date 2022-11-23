// En cas de pitjar el ratolí
void mousePressed(){
  
  // Elements en totes les pantalles
  
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
  
  // Individualment en cada pantalla
  switch (pantalla){
    case INICI: mousePressedOnPantallaInici(); break;
    case JUGAR: mousePressedOnPantallaJugar(); break;
    case PUNTS: mousePressedOnPantallaPunts(); break;
    case PREGUNTES: mousePressedOnPantallaPreguntes(); break;
    case CONFIG: mousePressedOnPantallaConfig(); break;
    case SOBRE: mousePressedOnPantallaSobre(); break;
  }
}

// Click sobre Elements de Pantalla INICI
void mousePressedOnPantallaInici(){
}

// Click sobre Elements de Pantalla JUGAR
void mousePressedOnPantallaJugar(){
  if(b2.mouseOverButton()){
    textTemp ="Jugant...";
  }
}

// Click sobre Elements de Pantalla PUNTS
void mousePressedOnPantallaPunts(){
  if(b1.mouseOverButton()){
    textTemp ="Mostrant punts...";
  }
}

// Click sobre Elements de Pantalla PREGUNTES
void mousePressedOnPantallaPreguntes(){
}

// Click sobre Elements de Pantalla CONFIG
void mousePressedOnPantallaConfig(){
}

// Click sobre Elements de Pantalla SOBRE
void mousePressedOnPantallaSobre(){
}

// Cursor sobre Elements de Pantalla JUGAR
void updateCursorPantallaJugar(){
  if(b2.mouseOverButton() && b2.enabled){
      cursor(HAND);
    }
    else {
      cursor(ARROW);
    }
}

// Cursor sobre Elements de Pantalla JUGAR
void updateCursorPantallaPunts(){
  if(b1.mouseOverButton() && b1.enabled){
      cursor(HAND);
    }
    else {
      cursor(ARROW);
    }
}

// Modifica el cursor
void updateCursor(){
  
  // Elements comuns a totes les pantalles
  if((bJugar.mouseOverButton() && bJugar.enabled)||
     (bPunts.mouseOverButton() && bPunts.enabled)||
     (bPreguntes.mouseOverButton() && bPreguntes.enabled)||
     (bConfig.mouseOverButton() && bConfig.enabled)||
     (bSobre.mouseOverButton() && bSobre.enabled)){
      cursor(HAND);
  }
  // Elements particular de cada pantalla
  else if(pantalla==PANTALLA.JUGAR){
    updateCursorPantallaJugar();
  }
  else if(pantalla==PANTALLA.PUNTS){
    updateCursorPantallaPunts();
  }
  else {
     cursor(ARROW);
  }
  
}
