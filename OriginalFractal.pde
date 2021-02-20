  
public void setup(){
  size(600,600);
  background(0);
  fill ((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
}

public void draw(){
myFractal(300,300,300);
}

public void mousePressed(){
  fill ((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
}

public void myFractal(int x, int y, int size){
  ellipse(x,y,size,size);
  if(size>15){
    myFractal(x-size,y,size/2);
    myFractal(x+size,y,size/2);
    myFractal(x,y-size,size/2);
    myFractal(x,y+size,size/2);
  }
}
