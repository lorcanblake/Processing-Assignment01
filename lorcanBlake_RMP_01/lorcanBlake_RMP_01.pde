import processing.sound.*;
WhiteNoise noise;

// amount of circles - in this case 20
int amt = 20;
// increment for keyboard input
float moveAmount = .2;

// 2d arrays with 20 rows to store circle info
float[][] circleContainer = new float[amt][];
color[] c = new color[amt];

// add face instance
Face myF;
// face x and y values to be passed to paint function
int fX;
int fY;

void setup(){
  
  fullScreen();
  // 20 arrays created
  for(int i = 0; i < circleContainer.length; i++){
    
    float[] circle = new float[3];
    
   circle[0] = random(width);
   circle[1] = random(height);
   circle[2] = random(10,50); //restrict to between 10 to 50
   
   circleContainer[i] = circle; // put the wh and radius values into 2d array for keyboard manipulation
   
    c[i] = color(int(random(255)), int(random(255)), int(random(255))); // generate random colour values
  }
  
  myF = new Face();
  
  // Create the noise generator
  noise = new WhiteNoise(this);
  noise.play();
}

void draw(){
  fill(color(int(235), int((243)), int((247))));
  rect(0,0,width,height); // rectangle to cover bg
  
  for(int z = 0; z < circleContainer.length; z++){
    fill(c[z]);
    ellipse(circleContainer[z][0], circleContainer[z][1], circleContainer[z][2], circleContainer[z][2]);
    noStroke();
    
   //in this case 0 = x axis of the array circle
  if(keyCode == LEFT && keyPressed == true){
     circleContainer[z][0] -= (moveAmount)*(random(255)); //  multiply by random values to give nice parallax effect
     
     //loop
     if(circleContainer[z][0] < 0){
      circleContainer[z][0] += width + circleContainer[z][2]; 
     }
   }
   
   if(keyCode == RIGHT && keyPressed == true){
     circleContainer[z][0] += (moveAmount)*(random(255)); //  multiply by random values to give nice parallax effect
     
     //loop
     if(circleContainer[z][0] > width){
      circleContainer[z][0] = 0-circleContainer[z][2]; 
     }
 
   }
   
   //in this case 0 = y axis of the array circle
   if(keyCode == UP && keyPressed == true){
     circleContainer[z][1] -= (moveAmount)*(random(255)); //  multiply by random values to give nice parallax effect
     
     //loop
      if(circleContainer[z][1] < 0){
      circleContainer[z][1] = height+circleContainer[z][2]; 
     }
   }
   
   if(keyCode == DOWN && keyPressed == true){
     circleContainer[z][1] += (moveAmount)*(random(255)); //  multiply by random values to give nice parallax effect
     
     //loop
      if(circleContainer[z][1] > height){
      circleContainer[z][1] = 0+circleContainer[z][2]; 
     }
   }
   
  }
  
  myF.paint(fX,fY);
  // assign mouse values to face
  fX = mouseX;
  fY = mouseY;
}