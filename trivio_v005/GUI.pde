
Button bJugar, bPunts, bPreguntes, bConfig, bSobre;
int buttonH = 100, buttonW = 300;

Panell pSobre;

void setGUI(){
  initButtons();
  initPanells();
}

void initButtons(){
  bJugar     = new Button(textBotoJugar, 2*marginH, 360, buttonW, buttonH);
  bPunts     = new Button(textBotoPunts, 2*marginH, 360 + buttonH + 2* marginV, buttonW, buttonH);
  bPreguntes = new Button(textBotoPreguntes, 2*marginH, 360 + 2*buttonH + 4*marginV, buttonW, buttonH);
  bConfig    = new Button(textBotoConfig, 2*marginH, 360 + 3*buttonH + 6*marginV, buttonW, buttonH);
  bSobre     = new Button(textBotoSobre, 2*marginH, 360 + 4*buttonH + 8*marginV, buttonW, buttonH);
}

void enableButtons(){
  bJugar.setEnabled(true);
  bPunts.setEnabled(true);
  bPreguntes.setEnabled(true);
  bConfig.setEnabled(true);
  bSobre.setEnabled(true);
}

void initPanells(){
  pSobre = new Panell(titolPanellInfo, textPanellInfo, 380, 360, 650, 660);
  pSobre.setIcona("../DATA/imgs/bombeta.svg");
}
