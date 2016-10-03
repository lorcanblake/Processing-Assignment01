// amount of circles - in this case 20
int amt = 20;
// increment for keyboard input
int moveAmount = 10;

// 2d arrays with 20 rows to store circle info
float[][] circleContainer = new float[amt][];
color[] c = new color[amt];

void setup(){
  fullScreen();
  colorMode(RGB);
  // 20 arrays created
  for(int i = 0; i < amt; i++){
    
    float[] circle = new float[3];
    
   circle[0] = random(width);
   circle[1] = random(height);
   circle[2] = random(10,50); //restrict to between 10 to 50
   
   circleContainer[i] = circle; // put the wh and radius values into 2d array for keyboard manipulation
   
    c[i] = color(int(random(255)), int(random(255)), int(random(255))); // generate random colour values
  }
}

void draw(){
  
  for(int z = 0; z < circleContainer.length; z++){
    fill(c[z]);
    ellipse(circleContainer[z][0], circleContainer[z][1], circleContainer[z][2], circleContainer[z][2]); 
  
   //in this case 0 = x axis of the array circle
  if(keyCode == LEFT && keyPressed == true){
     circleContainer[z][0] -= moveAmount;
   }
   
   if(keyCode == RIGHT && keyPressed == true){
     circleContainer[z][0] += moveAmount;
   }
   
   //in this case 0 = y axis of the array circle
   if(keyCode == UP && keyPressed == true){
     circleContainer[z][1] -= moveAmount;
   }
   
   if(keyCode == DOWN && keyPressed == true){
     circleContainer[z][1] += moveAmount;
   }
   
  }
  
}