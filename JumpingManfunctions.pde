void drawMan() {
  stroke(0);
  strokeWeight(20);
  fill(0);
  if (goingToWork){
    manPosX = 50;
  } else {
    manPosX = width-50;
  }   
  if (jumping) {
    if (jumpingUp) {
      manPosY = manPosY-jumpSpeed;
      if (manPosY < height/4) {
        jumpingUp = false;
      }
    } else {
      manPosY = manPosY+jumpSpeed;
      if (manPosY > height/1.5) {
        manPosY = height/1.5;
        jumping = false;
        jumpingUp = true;
      }
    }
  }
  point(manPosX, manPosY);
}
void mousePressed() {
  jumping = true;
}

