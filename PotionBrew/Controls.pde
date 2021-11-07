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
    readyToBrew = false;
    if (key == '1' ) {
      ingredient1 = 1;
      firstChoicePicked = true;
      aitneSFX.play();
    } else if (key == '2' ) {
      ingredient1 = 2;
      firstChoicePicked = true;
      capSFX.play();
    } else if (key == '3') {
      ingredient1 = 3;
      firstChoicePicked = true;
      solSFX.play();
    } else if (key == '4') {
      ingredient1 = 4;
      firstChoicePicked = true;
      necroSFX.play();
    }
  }

  if (firstChoicePicked && !secondChoicePicked) { 
    if (key == '1' && firstChoicePicked && ingredient1 != 1) {
      ingredient2 = 1;
      secondChoicePicked = true;
      capSFX.play();
    } else if (key == '2' && firstChoicePicked && ingredient1 != 2) {
      ingredient2 = 2;
      secondChoicePicked = true;
      capSFX.play();
    } else if (key == '3' && firstChoicePicked && ingredient1 != 3) {
      ingredient2 = 3;
      secondChoicePicked = true;
      solSFX.play();
    } else if (key == '4' && firstChoicePicked && ingredient1 != 4) {
      ingredient2 = 4;
      secondChoicePicked = true;
      necroSFX.play();
    }
  }
}
