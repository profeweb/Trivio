// Marges Horitzontal i Vertical
float marginH = 20, marginV = 20;

// Dimensions Zona Lateral
float sidebarWidth = 300, sidebarHeight = 720;

// Dimensions Logo
float logoWidth  = 350, logoHeight = 350;
      
// Dimensions Banner
float bannerWidth  = 1560, bannerHeight = 300;
      
// Dimensions Columnes
float columnWidth  = 505, columnHeight = 720;
      
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
}

void dibuixaPantallaPunts(){
  enableButtons();
  bPunts.setEnabled(false);
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  dibuixaColumna12();
  dibuixaColumna3();
}
      

void dibuixaZonaLogo(){
  image(imgLogo, marginH, 0, logoWidth, logoHeight);
}

void dibuixaSideBar(){
  bJugar.display();
  bPunts.display();
  bPreguntes.display();
  bConfig.display();
  bSobre.display();
}

void dibuixaBanner(){
  // Zona Banner

}

void dibuixaColumna1(){
}

void dibuixaColumna2(){
   
}

void dibuixaColumna12(){

}

void dibuixaColumna3(){

}
