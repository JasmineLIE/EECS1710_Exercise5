import processing.sound.*;

//Potion Brew is a game that utilizes sound and interactions.  Players click on the potion ingedient to add to the pot which will change the bubble colour and play a specialized sound.  
//Player can unlock certain types of potions if they input the right combination of ingredients

PImage background;
potionBook potionBook;
Cauldron cauldron;
Brewing brewing;

SoundFile aitneSFX, solSFX, capSFX, necroSFX;



void setup() {
  size(735, 496, P2D);

  bookInteractionClick = new SoundFile(this, "Audio/PageClick.wav");
  bookClose = new SoundFile(this, "Audio/BookClose.mp3");
  
  background = loadImage("Images/background.jpg");

  potionBook = new potionBook(0, 0);
  cauldron = new Cauldron( 300, 300);
  bs = new BubblesSystem(new PVector(217, 484));
  
 brewing = new Brewing(0, 0);
}

void draw() {
println(mouseX, mouseY);
  background(background);
    cauldron.run();
    brewing.run();
  potionBook.draw();
  

}
