
// Integers for the 'x' parameters of images:
int Workx, Homex, Settingsx;

// Integers for the 'y' parameters of images:
int Worky, Homey, Settingsy;

// Variables for the images:
PImage Work, Home, Settings;
    
void mousePressed() {

  if (mouseX>Workx&&mouseX<Workx+Work.width&&mouseY>Worky&&mouseY<Worky+Work.height) {
     frontEnd = !frontEnd;
  }

  if (mouseX>Homex&&mouseX<Homex+Home.width&&mouseY>Homey&&mouseY<Homey+Home.height) {
    goingToWork = !goingToWork;
    frontEnd = !frontEnd;
  }
  
  if (mouseX>Settingsx&&mouseX<Settingsx+Settings.width&&mouseY>Settingsy&&mouseY<Settingsy+Settings.height){
    toSettings = !toSettings;
    frontEnd = !frontEnd;
  } 
}

// Custom function for the Work button:
void workButton() {
  Work.resize(200, 75);
  Workx = 65;
  Worky = 200;
  image(Work, Workx, Worky);
}

// Custom function for the Home button:
void homeButton() {
  Home.resize(200, 75);
  Homex = 280;
  Homey = 200;
  image(Home, Homex, Homey);
}

// Custom function for the Settings button:
void settingsButton() {
  Settings.resize(75, 75);
  Settingsx = 495;
  Settingsy = 200;
  image(Settings, Settingsx, Settingsy);
} 

