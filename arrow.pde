class arrow{

void display(float x,float y,float r){
  stroke(200,200,10);
  strokeWeight(10);
  line(width/2+x,height/2+y,(width/2+x)+50*sin(r),(height/2+y)+50*cos(r));
}
}
