class Face{
 
float wh = 140;  
color emojiYellow = color((255), (204), (34));
  
void paint(int xPos,int yPos){
  pushMatrix();
  translate(xPos, yPos);
  
  // face
  fill(emojiYellow);
  ellipse(0,0,wh,wh);
   
  // eyes
  fill(0);
  ellipse(35,-50,wh/10, wh/10);
  ellipse(-35,-30,wh/10, wh/10);
  
  // mouth 
  stroke(0);
  arc(5, 5, 50, 50, -PI, 0);  // upper half of circle
  
  popMatrix();
  
}
}