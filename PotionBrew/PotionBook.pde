boolean potionBookOpen = false;
int bookStatusCheck = 0;

SoundFile bookInteractionClick, bookClose;

class potionBook {
  PImage potionBook;  
  PVector position;
  potionBook(float x, float y) {
    position =  new PVector(x, y);
    potionBook = loadImage("Images/potionBook.png");
  }



  void draw() {
    if (potionBookOpen) {
      image(potionBook, position.x, position.y);
     
    }
  }
}
