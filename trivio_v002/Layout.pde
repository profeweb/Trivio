// Marges Horitzontal i Vertical
float marginH = 20,
      marginV = 20;

// Dimensions Zona Lateral
float sidebarWidth  = 300, 
      sidebarHeight = 720;

// Dimensions Logo
float logoWidth  = 300, 
      logoHeight = 300;
      
// Dimensions Banner
float bannerWidth  = 1560, 
      bannerHeight = 300;
      
// Dimensions Columnes
float columnWidth  = 505,
      columnHeight = 720;
      

void dibuixaZonaLogo(){
  fill(200,50,100);
  rect(marginH, marginV, logoWidth, logoHeight);
  fill(0);
  text("LOGO", marginH + logoWidth/2, marginV + logoHeight/2);
}

void dibuixaSideBar(){
  fill(50,200,100);
  rect(marginH, 2*marginV + logoHeight, sidebarWidth, sidebarHeight);
  fill(0);
  text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoHeight + sidebarHeight/2);  
}

void dibuixaBanner(){
  // Zona Banner
  fill(240, 100, 50);
  rect(2*marginH + logoWidth, marginV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", marginH + logoWidth + bannerWidth/2, marginV + bannerHeight/2);
}

void dibuixaColumna1(){
  fill(200, 200, 50);
  rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 1", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
}

void dibuixaColumna2(){
 
  fill(200, 200, 50);
  rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 2", 3*marginH + sidebarWidth + columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  
}

void dibuixaColumna12(){
  fill(200, 200, 50);
  rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, 2*columnWidth + marginH, columnHeight);
  fill(0);
  text("COLUMN 1i2", 3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight + columnHeight/2);

}

void dibuixaColumna3(){
 
  fill(200, 200, 50);
  rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 3", 4*marginH + sidebarWidth + 2*columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2); 
}
