class map_point{

  float x;
  float y;
  //constructor
  map_point(float x_,float y_){
    x = x_;
    y = y_;
  }
  
  //display function
  void display(){
    stroke(255);
    strokeWeight(2);
    point(width/2+x,height/2+y);
    println(x,y);
  }
  



}
