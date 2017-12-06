void setup(){
  size(500,500);
  colorMode(HSB,360,100,100,100);
  background(210,60,100);
}


void draw(){
  
  //bigger tirangle
  colorMode(RGB,255,255,255,255);
  fill(#99ccff);
  noStroke();
  beginShape();
  vertex(1,1);
  vertex(500,1);
  vertex(250,500);
  endShape(CLOSE);
  
  //smaller tirangle
  fill(#cce5ff);
  noStroke();
  triangle(50,25,450,25,250,425);
  
  //red balloon
  fill(255,0,0,175);
  noStroke();
  ellipse(100,100,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(100,175,50,250,150,175,80,250);
  
  //orange balloon
  fill(255,128,0,175);
  noStroke();
  ellipse(250,100,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(250,175,200,200,300,200,240,250);
  
  //yellow balloon
  fill(255,255,0,175);
  noStroke();
  ellipse(400,100,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(400,175,450,200,350,200,425,250);
  
  //green balloon
  fill(0,255,0,175);
  noStroke();
  ellipse(175,250,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(165,375,125,300,175,375,175,325);
  
  //blue balloon
  fill(0,0,255,175);
  noStroke();
  ellipse(325,250,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(325,325,250,325,375,350,325,375);
  
  //pink balloon
  fill(255,0,255,175);
  noStroke();
  ellipse(250,400,125,150);
  //string
  noFill();
  stroke(0,0,0);
  bezier(250,475,225,490,275,475,250,500);
  
}
