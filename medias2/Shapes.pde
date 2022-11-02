// Fitxer amb la informació dels Medias de l'App

// URL de la carpeta on hi ha les imatges
String URL_VECTORS = "vectors/";

// Array d'imatges vectorials (SVG)
PShape[] shapes;
  
// Estableix les imatges de l'App
void setVectors(){
    this.shapes = new PShape[3];
    this.shapes[0] = loadShape(URL_VECTORS+"/icona1.svg");
    this.shapes[1] = loadShape(URL_VECTORS+"/icona2.svg");
    this.shapes[2] = loadShape(URL_VECTORS+"/icona3.svg");
}
  
// Getter del número d'imatges vectorials
int getNumVectors(){
  return this.shapes.length;
}
  
// Getter de la imatge del logo
PShape getWarning(){
  return  this.shapes[0];
}
  
// Getter de la imatge del banner
PShape getError(){
  return  this.shapes[1];
}
  
// Getter de la imatge de la icona
PShape getInfo(){
  return  this.shapes[2];
}
  
// Getter de la imatge i-èssima
PShape getImgAt(int i){
  return this.shapes[i];
}

  
// Dibuixa el logo
void displayWarning(float x, float y, float w, float h){   
    shapeMode(CENTER);
    shape(getWarning(), x, y, w, h);
}

// Dibuixa la Icona
void displayError(float x, float y, float w, float h){   
    shapeMode(CENTER);
    shape(getError(), x, y, w, h);
}

// Dibuixa el Banner
void displayInfo(float x, float y, float w, float h){    
    shapeMode(CENTER);
    shape(getInfo(), x, y, w, h);
}
  
// Dibuixa la imatge vectorial i-èssima
void displayImg(int i, float x, float y, float w, float h){   
    shapeMode(CENTER);
    shape(getImgAt(i), x, y, w, h);
}
