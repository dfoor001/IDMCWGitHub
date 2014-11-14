void drawInGameBackground() {

  if (goingToWork) {
    skyTop = color(255);
    skyBottom = color(0, 0, 255);
    groundTop = color(180, 180, 180);
    groundBottom = color(25, 25, 25);
  } else {
    skyTop = color(0);
    skyBottom = color(0, 0, 255);
    groundTop = color(25, 25, 25);
    groundBottom = color(180, 180, 180);
  }
  
  setGradient(0, 0, width, height/1.5, skyTop, skyBottom, Y_AXIS);
  setGradient(0, int(height/1.5), width, height, groundTop, groundBottom, Y_AXIS);
}


// setGradient function taken from https://processing.org/examples/lineargradient.html
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  } else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
