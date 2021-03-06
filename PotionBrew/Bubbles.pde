//reference: https://processing.org/examples/simpleparticlesystem.html

// "#02FFFB"; //aitneShard Colours
//"#FE9200"; //solBraid Colours
// "#A1FA00"; //marscap Colours
//"#C700B3"; //necropul Colours
//#05C800 default



int ballWidth;
class Bubbles {

  PVector position;
  PVector acceleration;
  float lifespan;
  PVector velocity;
  float accel1 = -0;
  float accel2 = -0.010;
  float y;

  Bubbles (PVector l) {
    acceleration = new PVector(accel1, accel2);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = 255.0;
  }

  void update() {

    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }
  void display() {
    if (potionOutcome == 1) {
      fill(#FE9200, lifespan);
      noStroke();
    } else if (potionOutcome == 2) {
      fill(#A1FA00, lifespan);
      noStroke();
    } else if (potionOutcome == 3) {
      fill(#C700B3, lifespan);
      noStroke();
    } else if (potionOutcome == 4) {
      fill(#FE9200, lifespan);
      noStroke();
    } else if (potionOutcome == 5) {
      fill(#C700B3, lifespan);
      noStroke();
    } else if (potionOutcome == 6) {
      fill(#A1FA00, lifespan);
      noStroke();
    } else {
      fill(#05C800, lifespan);
      noStroke();
    }
    ellipse(position.x, position.y, random(10, 30), random(10, 30));
  }




  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }

  void run() {
    update();
    display();
  }
}
