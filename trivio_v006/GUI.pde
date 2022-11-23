// Configuració dels Elements de la GUI
// Botons, Panells, Desplegables, 

// Botons del Menú Principal
Button bJugar, bPunts, bPreguntes, bConfig, bSobre;
Button b1, b2;
// Dimensions dels botons
int buttonH = 100, buttonW = 300;

// Panell d'informació a la pantalles Sobre
Panell pSobre;

// Creació dels elements de la GUI
void setGUI(){
  initButtons();
  initPanells();
}

// Creació dels botons de la GUI
void initButtons(){
  bJugar     = new Button(textBotoJugar, 2*marginH, 360, buttonW, buttonH);
  bPunts     = new Button(textBotoPunts, 2*marginH, 360 + buttonH + 2* marginV, buttonW, buttonH);
  bPreguntes = new Button(textBotoPreguntes, 2*marginH, 360 + 2*buttonH + 4*marginV, buttonW, buttonH);
  bConfig    = new Button(textBotoConfig, 2*marginH, 360 + 3*buttonH + 6*marginV, buttonW, buttonH);
  bSobre     = new Button(textBotoSobre, 2*marginH, 360 + 4*buttonH + 8*marginV, buttonW, buttonH);

  b1 = new Button("CLICK PUNTS", 800, 360, buttonW, buttonH);
  b2 = new Button("CLICK JUGAR", 800, 360, buttonW, buttonH);
}

// Activar els botons del menú
void enableButtons(){
  bJugar.setEnabled(true);
  bPunts.setEnabled(true);
  bPreguntes.setEnabled(true);
  bConfig.setEnabled(true);
  bSobre.setEnabled(true);
  
  b1.setEnabled(true);
  b2.setEnabled(true);
}

// Creació dels panells de la GUI
void initPanells(){
  pSobre = new Panell(titolPanellInfo, textPanellInfo, 380, 360, 650, 660);
  pSobre.setIcona("../DATA/imgs/bombeta.svg");
}
