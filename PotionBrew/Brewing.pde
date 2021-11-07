int ingredient1, ingredient2, potionOutcome;

//for ingredients: 1 -- Aitne's Scale || 2 -- Sol's Braid || 3 - Marcaps || 4 -- Necropol
//for potionOutcome: 1 -- Destiny Brew || 2 -- Twin Trouble Brew || 3 -- Dynasty Brew || 4 -- Sunshroom Brew || 5 -- Rebel Brew || 6 -- Dreamscape Brew
boolean firstChoicePicked = false;
boolean secondChoicePicked = false;

class Brewing {
 PVector position;
 PImage blank, destBrew, ttBrew, dynaBrew, ssBrew, rebelBrew, dsBrew;
 
  Brewing(float x, float y) {
    position =  new PVector(x, y);
    blank = loadImage("Images/blankChoice.png");
  }
  
 void update() {
   
 }
void display() {
if (!firstChoicePicked && !secondChoicePicked) {
  image(blank, 0, 0);
}
}

void run() {
  display();
}
}
