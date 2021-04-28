class graph{
  float p_x;
  float p_y;
  int g_width;
  int g_height;
  int startx;
  int starty;
  //constructor
  graph(int _startx,int _starty,int _g_width,int _g_height){
  
    g_width = _g_width;
    g_height = _g_height;
    startx = _startx;
    starty = _starty;
  }
  
  // display function
  void display(float x,float y){
    y = map(y,-40,40,starty,starty+g_height);
    //rect();
    stroke(200,100,4);
    strokeWeight(10);
    point(x,y*2);
    //println(y);
  }
  void draw_ref(){
  stroke(0,255,0);
  strokeWeight(2);
  line(startx,starty+(g_height/2),startx+g_width,starty+(g_height/2));
  }

}
