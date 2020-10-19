// Disseny de la maquetació de l'App TRIVIO
// Establir les zones comunes entre pantalles.

float marginH = 20,
      marginV = 20;

float sidebarWidth  = 300, 
      sidebarHeight = 740;

float logoWidth  = 300, 
      logoHeight = 300;
      
float bannerWidth  = 1580, 
      bannerHeight = 300;
      
float columnWidth  = 300,
      columnHeight = 500;

void setup(){
  fullScreen();
  noStroke();
}


void draw(){
  
  background(55);
  
  /*
  
  // Zona Principal
  fill(200);
  rect(marginH, marginV, width - marginH*2, height - marginV*2);
  
  // Zona Logo
  fill(200,50,100);
  rect(marginH, marginV, logoWidth, logoHeight);
  
  // Zona Botons
  fill(50,200,100);
  rect(marginH, marginV + logoHeight, sidebarWidth, sidebarHeight);
  
  // Zona Banner
  fill(200, 200, 50);
  rect(marginH + logoWidth, marginV , bannerWidth, bannerHeight);
  
  // Zona Columna 1
  fill(200, 200, 50);
  rect(2*marginH + sidebarWidth, 2*marginV + bannerWidth, columnWidth, columnHeight);
  
  */
  fill(255,0,0); stroke(0);
  ellipse(2*marginH + sidebarWidth, 2*marginV + bannerWidth, 50, 50);
  
}
