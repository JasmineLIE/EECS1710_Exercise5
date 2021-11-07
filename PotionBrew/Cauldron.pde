SoundFile cauldronBubbling;

BubblesSystem bs;
class Cauldron {

  
PImage backOfCauldron, cauldronLiquid, frontOfCauldron;  
PVector position;
Cauldron (float x, float y){
  position =  new PVector(x, y);
   backOfCauldron = loadImage("Images/backOfCauldron.png");
  cauldronLiquid = loadImage("Images/cauldronLiquid.png");
  frontOfCauldron = loadImage("Images/frontOfCauldron.png"); 
}
void update() {
  bs.run();
 image(cauldronLiquid, 0, 0);  
}

void draw() {
  image(backOfCauldron, 0, 0);
 update();
  image(frontOfCauldron, 0, 0);
}

void soundEffects() {
  
}

void run() {
 draw();
}
}
