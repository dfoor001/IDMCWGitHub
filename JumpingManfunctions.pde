void drawMan() {
  stroke(180);
  strokeWeight(20);
  fill(0);
  if (goingToWork) {
    manPosX = 125;
  } else {
    manPosX = width-125;
  }   
  if (mousePressed) {
    manPosY = manPosY-jumpSpeed;
    if (manPosY <= 0) {
      manPosY= 0;
    }
  } else {
    manPosY = manPosY+jumpSpeed;
    if (manPosY > height/1.5) {
      manPosY = height/1.5;
    }
  }
  point(manPosX, manPosY);
}

