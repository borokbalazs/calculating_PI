float numbersInRect;
float numbersInCircle;
float pi;
void setup(){
size(500,500);
rectMode(CENTER);
ellipseMode(CENTER);
}
void draw(){
  noFill();
  stroke(0,0,0);
  ellipse(width/2,height/2,width,height);
  rect(width/2,height/2,width,height);
  for(int i=0;i<10000;i++){
  float pointX= random(0,width);
  float pointY= random(0,height);
  strokeWeight(2);
  if((pointX-width/2)*(pointX-width/2)+(pointY-height/2)*(pointY-height/2)<width/2*width/2){
    numbersInCircle++;
    stroke(0,255,0);
  }else{
    numbersInRect++;
    stroke(255,0,0);
  }
  point(pointX,pointY);
  
  }
  pi = (numbersInCircle/(numbersInRect+numbersInCircle))*4;
  textSize(32);
  fill(255,0,0);
  text(pi,100,200);
  println(pi);
  
}
