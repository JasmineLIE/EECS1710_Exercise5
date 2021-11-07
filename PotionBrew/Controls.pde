void keyPressed() {
  if (key == 'x') {
    if (potionBookOpen) {
      potionBookOpen = false;
      bookStatusCheck = 1;
    } else {
      potionBookOpen = true;
      bookStatusCheck = 2;
    }
  
  }
  
  if (key == 'x' && bookStatusCheck == 1) {
      bookClose.play();
 
  } else if (key == 'x' && bookStatusCheck == 2) {
       bookInteractionClick.play();
  }
 
  if (!firstChoicePicked && !secondChoicePicked) { //first pick choice
  if (key == '1' && !firstChoicePicked) {
     ingredient1 = 1;
  } else if (key == '2' && !firstChoicePicked) {
  ingredient1 = 2;
  } else if (key == '3' && !firstChoicePicked) {
  ingredient1 = 3;
  } else if (key == '4' && !firstChoicePicked) {
   ingredient1 = 4;
  }
} 

if (ingredient1 == 1) {
  
}
    if (key == '1' && !secondChoicePicked && firstChoicePicked) {
   ingredient2 = 1;
    secondChoicePicked = true;
  } else if (key == '2' && !secondChoicePicked && firstChoicePicked) {
   ingredient2 = 2;
    secondChoicePicked = true;
  } else if (key == '3' && !secondChoicePicked && firstChoicePicked) {
  ingredient2 = 3;
   secondChoicePicked = true;
  } else if (key == '4' && !secondChoicePicked && firstChoicePicked) {
   ingredient2 = 4;
   secondChoicePicked = true;
  }

}
