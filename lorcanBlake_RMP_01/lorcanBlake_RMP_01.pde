// making 30 circles
int amt = 30;

// arrays to store circle info
int[] allCircles = new int[amt];

int[] xPos = new int[amt];
int[] yPos = new int[amt];
int[] wh = new int[amt];


color[] c = new color[amt];


void setup(){
  fullScreen();
  colorMode(RGB);
  
  for(int i = 0; i < amt; i++){
    xPos[i] = int(random(width));
    yPos[i] = int(random(height));
    wh[i] = int(random(10, 50)); //restrict to between 10 to 50
    c[i] = color(int(random(200)), int(random(200)), int(random(200)));
    
    allCircles[0] = xPos[i];
    allCircles[1] = yPos[i];
    allCircles[2] = wh[i];
  }
}

void draw(){
  for(int i = 0; i < amt; i++){
    fill(c[i]);
    ellipse(xPos[i], yPos[i], wh[i], wh[i]);
  }
}