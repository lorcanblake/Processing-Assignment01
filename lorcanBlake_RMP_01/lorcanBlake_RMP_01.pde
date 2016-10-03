// amount of circles - in this case 20
int amt = 20;

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
  for(int i = 0; i < circleContainer.length; i++){
    fill(c[i]);
    ellipse(circleContainer[i][0], circleContainer[i][1], circleContainer[i][2], circleContainer[i][2]); 
  }
}