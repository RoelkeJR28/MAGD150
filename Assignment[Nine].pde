PImage tv;
float Static = (random(255));
color c = color(Static);

PImage bars;

import processing.video.*;
Capture reflection;

import processing.sound.*;
WhiteNoise white;
SinOsc sin;


void setup(){
  surface.setTitle("TV Channels & Reflection");
  size(800,800);
  
  //Loads both images used
  tv = loadImage("OldTV.jpg");
  bars = loadImage("SMPTEColorBars.png");
  
  //Creates the live video for the reflection
  reflection = new Capture(this,640,480);
  
  //Creates the sounds used for the channels
  white = new WhiteNoise(this);
  sin = new SinOsc(this);
  
}

void captureEvent(Capture reflection) {
  reflection.read();
}

void draw(){
  background(255);
  tv.resize(800,800);
  image(tv,0,0);
  
  if (mousePressed == true){
    //Shows channel 1 of the TV and plays white noise generator.
    if (mouseButton == LEFT){
      for (int i = 00; i < 5; i++ ){
        noStroke();
        fill(i*random(255));
        rect(125,205,443,331);
        white.play();
        sin.stop();
      }
    }
    //Shows channel 2 of the TV and plays sine wave oscillator.
    else if (mouseButton == RIGHT){
      bars.resize(443,331);
      image(bars,125,205);
      sin.play();
      white.stop();
    }
    //The TV is off with no sound. Your reflection is on the screen.
    else if (mouseButton != LEFT || mouseButton != RIGHT){
      reflection.start();
      pushMatrix();
      translate(567,205);
      scale(-0.69,0.69);
      image(reflection,0,0);
      popMatrix();
      noStroke();
      fill(50,250);
      rect(125,205,443,331);
      white.stop();
      sin.stop();
    }
  }
  
  //The TV is off with no sound. Your reflection is on the screen.
  if (mousePressed == false){
    reflection.start();
    pushMatrix();
    translate(567,205);
    scale(-0.69,0.69);
    image(reflection,0,0);
    popMatrix();
    noStroke();
    fill(50,250);
    rect(125,205,443,331);
    white.stop();
    sin.stop();
  }
}
