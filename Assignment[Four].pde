float xP, yP;
float xS, yS;
float w, h;
float xMin, xMax; 
float yMin, yMax;
int xD = 1, yD = 1;
int Option = 0;

void setup() {
  surface.setTitle("Bouncy Balls");
  size(800,800);
  background(0);
  frameRate(20);

  xP = width / 2.0;
  yP = height / 2.0;

  xS = random(10.0, 20.0);
  yS = random(10.0, 20.0);

  xMin = 100;
  yMin = 100;
  xMax = width-100;
  yMax = height-100;
  
  Option = int(random(1, 4));
  println("random option: " + Option);
  
}

void draw() {
  //Color Change
  if (keyPressed == true) {
    background(75);
    colorMode(HSB);
  }
  if (mousePressed == true) {
    background(0);
    colorMode(RGB);
  }
  
  //Flashing Squares
  for (int x = 1; x < 12; x++) {
    noFill();
    strokeWeight(1);
    stroke(random(255),30);
    rectMode(CENTER);
    rect(width/2, height/2, (x*50), (x*50));
  }
  
  //Boundary Line
  strokeWeight(15);
  stroke(127);
  line(xMin, yMin, xMax, yMin);
  line(xMin, yMax, xMax, yMax);
  line(xMin, yMin, xMin, yMax);
  line(xMax, yMin, xMax, yMax);
  
  //Option 1: 1 Ball
  if (Option == 1) {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(xP, yP, 25, 25);
  }
    
  //Option 2: 2 Balls
  else if (Option == 2) {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(xP, yP, 25, 25);
    ellipse(xP-50, yP-50, 50, 50);
  }
  
  //Option 3: 3 Balls
  else if (Option == 3) {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(xP, yP, 25, 25);
    ellipse(xP-50, yP-50, 50, 50);
    ellipse(xP+50, yP+50, 75, 75);
  }

  xP = xP + xS * xD;
  yP = yP + yS * yD;
  
  if (xP <= xMin + w / 2.0
    || xP >= xMax - w / 2.0) {
    xD = -xD;
  }

  if (yP <= yMin + h / 2.0
    || yP >= yMax - h / 2.0) {
    yD = -yD;
  }
  
  }
