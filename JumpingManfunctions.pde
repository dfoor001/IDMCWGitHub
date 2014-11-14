void drawMan() {
  strokeWeight(20);
  fill(0);

  if (jumping) {
    if (jumpingUp) {
      manPosY = manPosY-jumpSpeed;
      if (manPosY > height/1.6) {
        jumpingUp = false;
      }
    } else {
      manPosY = manPosY+jumpSpeed;
      if (manPosY < height/1.5) {
        jumping = false;
        jumpingUp = true;
      }
    }

    point(manPosX, manPosY);
  }
}
void mousePressed() {
  jumping = true;
}

