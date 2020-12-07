import processing.net.*;

Client c;
String data;

float rx=PI/4;
float ry=PI/6;

void setup(){
size(1024, 700, P3D); 
background(51);
translate(width/2, height/2); 
rotateY(PI/4); 
rotateX(PI/6); 
fill(33,33,33);
box(200); 

c = new Client(this, "localhost", 8080); // Connect to server on port 80
thread("HttpRequest");
}

void draw(){
  background(80);
  float rxp = (mouseX-(width/2)) * 0.005;
  float ryp = (mouseY-(height/2)) * 0.005;
  rx = rx*0.85 + rxp*0.15;
  ry = ry*0.85 + ryp*0.15;
  translate(width/2, height/2);
  rotateY(rx);
  rotateX(ry); 
  fill(33,33,33);
  box(200,200,30); //Forma MPU
  textSize(22);
  fill(255,255,255);
  text("MPU-6050",-60,5,16);
  fill(202,130,49);
  translate(62,91,-11);
  box (14,20,10);
  for(int i=0;i<5;i++){
  translate(-24,0,0);
  box (14,20,10);
  }
  translate(0,-182,0);
  box (14,20,10);
  for(int i=0;i<5;i++){
  translate(24,0,0);
  box (14,20,10);
  }
  translate(29,30,0);
  box (20,14,10);
  for(int i=0;i<5;i++){
  translate(0,24,0);
  box (20,14,10);
  }
  translate(-182,0,0);
  box (20,14,10);
  
  for(int i=0;i<5;i++){
  translate(0,-24,0);
  box (20,14,10);
  }
  
  translate(90,60,0);
  box(120,120,10);
 
   println("X:"+mouseX+" Y:"+mouseY);
   
   if (mouseX>600){
     println("DERECHA");
   }
   if (mouseX<425){
     println("IZQUIERDA");
   }
   if(mouseY>450){
       println("ARRIBA");
   }
   
     if(mouseY<250){
       println("ABAJO");
   }
       
     
 
  

}


void HttpRequest(){
  
  while(true){
      
  c.write("POST /ph4/processing HTTP/1.1\r\n"); // Use the HTTP "GET" command to ask for a Web page
  c.write("Host: localhost\r\n");
  c.write("Content-Type: application/x-www-form-urlencoded\r\n");
  String body="valueMouseX="+mouseX+"&valueMouseY="+mouseY;
  c.write("Content-Length: "+body.length()+"\r\n");
  c.write("\r\n");
  c.write("valueMouseX="+mouseX+"&valueMouseY="+mouseY); 
  delay(1000);
  }
  
}
