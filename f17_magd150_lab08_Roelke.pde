//import processing.pdf.*;

String[] text;
String scriptFontFile = "ScriptMTBold-60.vlw";
String elephantFontFile = "Elephant-Regular-60.vlw";
PFont Script;
PFont Elephant;
String textFile = "text.txt";
int count, textSize, lineSpacing, margin;

//The color palette that's used:
//Teal = #155263
//Dark Orange = #FF6F3C
//Light Orange = #FF9A3C
//Yellow = #FFC93C

void setup(){
  surface.setTitle("Motivational Poster");
  size(600,550);
  //noLoop();
  //beginRecord(PDF,"MotivationalPoster.pdf");
  
//Loads the .txt file in the data folder
  text = loadStrings(textFile);
  count = text.length;
  
//Loads the fonts in the data folder
  Script = loadFont(scriptFontFile);
  Elephant = loadFont(elephantFontFile);
  
//Determines the font size
  String extractFontSize = scriptFontFile.substring(
    scriptFontFile.lastIndexOf("-") + 1, 
    scriptFontFile.indexOf(".vlw"));
  textSize(textSize);
  lineSpacing = 70;
  margin = 50;
}

void draw(){
  background(#155263);
  textAlign(CENTER, CENTER);
  
//What makes up the clock
  //Clock face
  ellipseMode(CENTER);
  fill(#FFC93C);
  noStroke();
  ellipse(300,350,350,350);
  
  //Numbers
  fill(#FF6F3C);
  text("12",300,220);
  text("3",430,350);
  text("6",300,460);
  text("9",170,350);
  
  //Hour & minute hands
  stroke(#FF9A3C);
  strokeWeight(15);
  line(300,350,400,350);
  strokeWeight(10);
  line(300,350,300,500);
  
  //Middle circle
  noStroke();
  fill(#FF6F3C);
  ellipse(300,350,30,30);
  
//Makes the text at the top using the .txt file
  textAlign(LEFT,CENTER);
  textFont(Script);
  fill(#FF9A3C);
  for (int i = 0; i < count; ++i) {
    text(text[i], margin, 
      margin + (textSize + lineSpacing) * i);
  }
  
//Makes the clock hand and "Now" text rotate in a circle
  pushMatrix();
  translate(300,350);
  rotate(frameCount / 150.0);
  //second hand
  stroke(#FF6F3C);
  strokeWeight(5);
  line(160,0,0,0);
  //"Now" text
  textAlign(LEFT,BASELINE);
  fill(#155263);
  textFont(Elephant);
  text("Now",20,0);
  popMatrix();
  
  //endRecord();
}