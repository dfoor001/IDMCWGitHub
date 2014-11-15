void setup() {
  size(640, 360);

  manPosY = height/1.5;

  //  buildingPosX[0] = width;
  //  buildingPosX[1] = width*1.5;

  //Test values
  if (goingToWork) {
    buildingPosX[0] = width;
    buildingPosX[1] = width*1.5;
  } else {
    buildingPosX[0] = 0;
    buildingPosX[1] = -(width/2);
  } 

  buildingHeight[0] = int(random(50, 130));
  buildingHeight[1] = int(random(50, 130));

  frameRate(60);
}

void draw() {
  if (!frontEnd) {
    drawInGameBackground();
    drawMan();
    drawBuilding();
  }
}

