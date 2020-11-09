
PImage imgLogo, imgFons;
PFont font1, font2, font3;

void loadMedia(){
  loadImages();
  loadFonts();
  loadSounds();
}

void loadImages(){
  imgLogo = loadImage("../DATA/imgs/logoTrivio.jpg");
  imgFons = loadImage("../DATA/imgs/fonsTrivio.png");
}

void loadFonts(){
  font1 = createFont("../DATA/fonts/Sweet Creamy.ttf", 32);
  font2 = createFont("../DATA/fonts/secrcode.ttf", 32);
  font3 = createFont("../DATA/fonts/Fluo Gums.ttf", 32);
}

void loadSounds(){
}
