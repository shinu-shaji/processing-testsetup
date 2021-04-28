/**
 * Chat Server 
 * by Tom Igoe. 
 * 
 * Press the mouse to stop the server.
 */
 

import processing.net.*;

ArrayList pointcollection,graph_point;

int port = 8080;
boolean myServerRunning = true;

int bgColor = 0;
int direction = 1;
int textLine = 60;

float xyr[];
arrow dir_arrow;
Server myServer;
graph acc_graph;
void setup()
{
  
  xyr = new float[4];
  size(1920, 1000);
  //textFont(createFont("SanSerif", 16));
  myServer = new Server(this, port); // Starts a myServer on port 10002
  dir_arrow = new arrow();
  acc_graph = new graph(0,0,300,200);
  pointcollection = new ArrayList();
  graph_point = new ArrayList();
  background(0);
  
  
}

void mousePressed()
{
  // If the mouse clicked the myServer stops
  myServer.stop();
  myServerRunning = false;
}

void draw()
{
  
  if (myServerRunning == true)
  {
    //text("server", 15, 45);
    //print(mouseX+  " "+mouseY+"\n");
    Client thisClient = myServer.available();
    if (thisClient != null) {
      if (thisClient.available() > 0) {
        
        xyr = float(split(thisClient.readString()," "));
          
          map_point point_data = new map_point(xyr[0],xyr[1]);
          
          pointcollection.add(point_data);
          //display_points();   
          background(0);
          dir_arrow.display(xyr[0],xyr[1],xyr[2]);
          acc_graph.display(200,xyr[3]);
          acc_graph.draw_ref();
          for(int i=0;i<pointcollection.size();i++){
            map_point aa = (map_point)pointcollection.get(i);
            aa.display();
          }
          //rotateY(radians(180)); 
      }
    }
  }
  else 
  {
    text("server", 15, 45);
    text("stopped", 15, 65);
  }
  //rect(0,0,300,100);
  
}

void display_points(){
  for(int i=0;i<pointcollection.size();i++){
    ((map_point)pointcollection.get(i)).display();
  }
}
