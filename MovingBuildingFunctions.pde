void drawBuilding() {
  stroke(0);
  if (goingToWork) {
    for (int i = 0; i< buildingPosX.length; i++) {
      buildingPosX[i] = buildingPosX[i]-buildingSpeed;
      rect(buildingPosX[i], (height/1.5-buildingHeight[i]), 30, buildingHeight[i]);
      if (buildingPosX[i] <-50) {
        buildingHeight[i] = int(random(50, 130));
        buildingPosX[i] = width;
        buildingSpeed = buildingSpeed + 0.2;
      }
    }
  } else {
    for (int i = 0; i< buildingPosX.length; i++) {
      buildingPosX[i] = buildingPosX[i]+buildingSpeed;
      rect(buildingPosX[i], (height/1.5-buildingHeight[i]), 30, buildingHeight[i]);
      if (buildingPosX[i] > width) {
        buildingHeight[i] = int(random(50, 130));
        buildingPosX[i] = 0;
        buildingSpeed = buildingSpeed + 0.2;
      }
    }
  }
}

