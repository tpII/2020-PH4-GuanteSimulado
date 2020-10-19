float rx=PI/4;
float ry=PI/6;

void setup(){
size(800, 600, P3D); 
background(51);
translate(width/2, height/2); 
rotateY(PI/4); 
rotateX(PI/6); 
fill(158,10,10);
box(200); 
}

void draw(){
  background(51);
  float rxp = (mouseX-(width/2)) * 0.005;
  float ryp = (mouseY-(height/2)) * 0.005;
  rx = rx*0.85 + rxp*0.15;
  ry = ry*0.85 + ryp*0.15;
  translate(width/2, height/2);
  rotateY(rx);
  rotateX(ry); 
  fill(158,10,10);
  box(200);
  println("X:"+mouseX);
  println("Y:"+mouseY);
 
  
}
