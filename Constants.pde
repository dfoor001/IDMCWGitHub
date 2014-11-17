//This is needed for the setGradient function below
int Y_AXIS = 1;
int X_AXIS = 2;
int manPosX;
int jumpSpeed  = 13;
float buildingSpeed = 10;
//Need to delcare the value for manPosY later due to size not existing yet
float manPosY;
float [] buildingPosX = new float[2];
int []buildingHeight = new int[2];

//These are the color Vars for the background
color skyTop, skyBottom, groundTop, groundBottom;

//Bool frontEnd tracks whether we are on the front end or in game going to Work tracks wether we are going to work or (if false) going home.
boolean frontEnd = false;
boolean goingToWork = true;
boolean toSettings = false;

