// Components de la GUI
// Selects

// Selects de la GUI
Select s1, s2;

// Valors dels Selects
String[] selectValues = {"RED", "GREEN", "BLUE"};
String[] selectValues2 = {"1", "2", "3"};

// Dimensions dels botons
float selectW = 300;
float selectH = 30;

// Color de fons de l'App
color bgColor = color(255);

// Valor numèric
int n = 0;

void setup(){
  
  size(800, 800);      // Dimensions de la Pantalla
  
  // Creació dels selects
  s1 = new Select(selectValues, width/3, height/5, selectW, selectH);
  s2 = new Select(selectValues2, width/3, 3*height/5, selectW, selectH);
}

void draw(){
  
  // Fons de la finestra
  background(bgColor);
  
  // Dibuixa els selects
  s1.display();
  s2.display();
  
  // Actualitza forma del cursor
  updateCursor();
  
  // Dibuixa número n
  fill(0); textSize(38);
  text(n, 50, 50);
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  if(s1.mouseOverSelect() && s1.enabled){
    if(!s1.collapsed){
      s1.update();
      updateColor();
    }
    s1.collapsed = !s1.collapsed;
  }
  
  if(s2.mouseOverSelect() && s2.enabled){
    if(!s2.collapsed){
      s2.update();
      updateNumber();
    }
    s2.collapsed = !s2.collapsed;
  }
}

// Modifica el color
void updateColor(){
  if(s1.selectedValue=="RED"){
    bgColor = color(255, 0, 0);
  }
  else if(s1.selectedValue=="GREEN"){
    bgColor = color(0, 255, 0);
  }
  else if(s1.selectedValue=="BLUE"){
    bgColor = color(0, 0, 255);
  }
}

void updateNumber(){
  if(s2.selectedValue=="1"){
    n = 1;
  }
  else if(s2.selectedValue=="2"){
    n = 2;
  }
  else if(s2.selectedValue=="3"){
    n = 3;
  }
  
}

 // Modifica el cursor
void updateCursor(){
  
  if((s1.mouseOverSelect() && s1.enabled)||
     (s2.mouseOverSelect() && s2.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
}
