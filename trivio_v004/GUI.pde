
Button bJugar, bPunts, bPreguntes, bConfig, bSobre;
int buttonH = 100, buttonW = 300;

void setGUI(){
  initButtons();
}

void initButtons(){
  bJugar     = new Button("Jugar", 2*marginH, 360, buttonW, buttonH);
  bPunts     = new Button("Punts", 2*marginH, 360 + buttonH + 2* marginV, buttonW, buttonH);
  bPreguntes = new Button("Preguntes", 2*marginH, 360 + 2*buttonH + 4*marginV, buttonW, buttonH);
  bConfig    = new Button("Configuració", 2*marginH, 360 + 3*buttonH + 6*marginV, buttonW, buttonH);
  bSobre     = new Button("Sobre Trivio", 2*marginH, 360 + 4*buttonH + 8*marginV, buttonW, buttonH);
}

void enableButtons(){
  bJugar.setEnabled(true);
  bPunts.setEnabled(true);
  bPreguntes.setEnabled(true);
  bConfig.setEnabled(true);
  bSobre.setEnabled(true);
}
