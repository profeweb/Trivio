// Funcions de Dibuix de les Pantalles

void dibuixaPantallaInici(){
  enableButtons();
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
}

void dibuixaPantallaJugar(){
  enableButtons();
  bJugar.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna1();
  dibuixaColumna2();
  dibuixaColumna3();
  
  b2.display();
}

void dibuixaPantallaPreguntes(){
  enableButtons();
  bPreguntes.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
}

void dibuixaPantallaConfig(){
  enableButtons();
  bConfig.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
}

void dibuixaPantallaSobre(){
  enableButtons();
  bSobre.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
  
  pSobre.display();
}

void dibuixaPantallaPunts(){
  enableButtons();
  bPunts.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
  
  b1.display();
}
