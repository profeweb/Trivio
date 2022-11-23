// Disseny de les pantalles de l'App Trivio v1.6
// Mouse Pressed en Diferents Pantalles
String textTemp="Text Pantalla";

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
  
  image(imgFons, 0, 0, width, height);    //Imatge de fons
  
  // Dibuixa la pantalla corresponent
  switch(pantalla){
    case INICI: dibuixaPantallaInici(); break;
    case JUGAR: dibuixaPantallaJugar(); break;
    case PUNTS: dibuixaPantallaPunts(); break;
    case PREGUNTES: dibuixaPantallaPreguntes(); break;
    case CONFIG: dibuixaPantallaConfig(); break;
    case SOBRE: dibuixaPantallaSobre(); break;
  } 
  
  updateCursor();   // Modifica l'aparença del cursor
  
  text(textTemp, 900, 200);
  
}
