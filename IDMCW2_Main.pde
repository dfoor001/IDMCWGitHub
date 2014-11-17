void setup() {
  size(640, 360);
  Work = loadImage("work.png");
  Home = loadImage("Home.png");
  Settings = loadImage("cog.png");


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
  //Custom functions for the main menu buttons (detailed code in 'MainMenuFunctions.pde')
  workButton();
  homeButton();
  settingsButton();
 
 //Loads the level for work 
  if (frontEnd = !frontEnd) {
    drawInGameBackground();
    drawMan();
    drawBuilding();
  }
  
 //Loads the level for home
  if (frontEnd = !frontEnd && goingToWork = !goingToWork){
    drawInGameBackground();
    drawMan();
    drawBuilding();
  }
  
 //Loads the settings menu (listed below are temporary custom functions; to be edited) 
  if (frontEnd = !frontEnd && toSettings = !toSettings){
    drawOptionOne();
    drawOptionTwo();
    drawOptionThree();
  }
}

