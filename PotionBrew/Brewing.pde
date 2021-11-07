int ingredient1, ingredient2, potionOutcome;

//for ingredients: 1 -- Aitne's Scale || 2 -- Sol's Braid || 3 - Marcaps || 4 -- Necropol
//for potionOutcome: 1 -- Destiny Brew || 2 -- Twin Trouble Brew || 3 -- Dynasty Brew || 4 -- Sunshroom Brew || 5 -- Rebel Brew || 6 -- Dreamscape Brew || 7 -- Flat Brew
boolean firstChoicePicked = false;
boolean secondChoicePicked = false;

int countDown;
boolean readyToBrew = false;

PImage blank, destBrew, ttBrew, dynaBrew, ssBrew, rebelBrew, dsBrew;
PImage aitneScale, solsBraid, marcap, necropul;
class Brewing {
  PVector position;


  Brewing(float x, float y) {
    position =  new PVector(x, y);
    blank = loadImage("Images/blankChoice.png");
    aitneScale = loadImage("Images/aitneScale.png");
    solsBraid = loadImage("Images/solsBraid.png");
    marcap = loadImage("Images/marscap.png");
    necropul = loadImage("Images/necropol.png");
    destBrew = loadImage("Images/destinyBrew.png");
    ttBrew = loadImage("Images/twinTroubleBrew.png");
    dynaBrew = loadImage("Images/dynastyBrew.png");
    ssBrew = loadImage("Images/sunshroomBrew.png");
    rebelBrew = loadImage("Images/rebelBrew.png");
    dsBrew = loadImage("Images/dreamscapeBrew.png");
    
  }

  void update() {
    switch(ingredient1) {
    case 1: 
      image(aitneScale, 110, 120);
      break;
    case 2:
      image(solsBraid, 110, 120);
      break;
    case 3:
      image(marcap, 110, 120);
      break;
    case 4:
      image(necropul, 110, 120);
      break;
      
    }
      switch(ingredient2) {
         case 1: 
      image(aitneScale, 240, 120);
      break;
    case 2:
      image(solsBraid, 240, 120);
      break;
    case 3:
      image(marcap, 240, 120);
      break;
    case 4:
      image(necropul, 240, 120);
      break;
      }
    

    if (firstChoicePicked && secondChoicePicked && !readyToBrew) {
      if (ingredient1 == 1 && ingredient2 == 2) {
        potionOutcome = 2;
        readyToBrew = true;
      } else if (ingredient1 == 1 && ingredient2 == 3) {
        potionOutcome = 1;
        readyToBrew = true;
      } else if (ingredient1 == 1 && ingredient2 == 4) {

        potionOutcome = 3;
        readyToBrew = true;
      } else if (ingredient1 == 2 && ingredient2 == 3) {

        potionOutcome = 4;
        readyToBrew = true;
      } else if (ingredient1 == 2 && ingredient2 == 4) {

        potionOutcome = 6;
        readyToBrew = true;
      } else if (ingredient1 == 3 && ingredient2 == 4) {

        potionOutcome = 5;
        readyToBrew = true;
      } 
      countDown = 15;
    }
    
    if (readyToBrew) {
      countDown--;
      if (countDown < 0) {
      switch (potionOutcome) {
      case 1:
      image(destBrew, 0, 0);
      break;
      case 2:
      image(ttBrew, 0, 0);
      break;
      case 3:
      image(dynaBrew, 0, 0);
      break;
      case 4:
      image(ssBrew, 0, 0);
      break;
      case 5:
      image(rebelBrew, 0, 0);
      break;
      case 6:
      image(dsBrew, 0, 0);
      break;
      }
      }
    }
  }
  void display() {

    image(blank, 0, 0);
    update();
  }

  void run() {
    display();
  }
}
