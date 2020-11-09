// Elements Multimèdia de l'APP
// Imatges, tipografies, sons, ...
// Elements Multimèdia de l'App
// Imatges, fonts, àudios, ...

// Imatges
PImage imgLogo, imgFons;
// Tipografies
PFont font1, font2, font3;

// Càrrega dels elements multimèdia
void loadMedia(){
  loadImages();
  loadFonts();
  loadSounds();
}

// Càrrega de les Imatges
void loadImages(){
  imgLogo = loadImage("../DATA/imgs/logoTrivio.jpg");
  imgFons = loadImage("../DATA/imgs/fonsTrivio.png");
}

// Càrrega de les Tipografies
void loadFonts(){
  font1 = createFont("../DATA/fonts/Sweet Creamy.ttf", 32);
  font2 = createFont("../DATA/fonts/secrcode.ttf", 32);
  font3 = createFont("../DATA/fonts/Fluo Gums.ttf", 32);
}

// Càrrega dels àudios
void loadSounds(){
}
