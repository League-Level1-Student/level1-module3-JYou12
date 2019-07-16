void setup(){
  size(400, 500);
}

int birdX = 150;
int birdY;
int birdV = 40;
int gravity = 3;

int pipeX = 500;
int pipeY = 0;
int pipeSpeed = 2;
int upperPipeHeight = (int) random(100, 400);
int pipeGap = 100;
int score = 0;

int lpipeY = upperPipeHeight + pipeGap;

void draw(){
text("Score: " + score, 100, 100);

  //bird
birdY += gravity;  
background(12, 178, 198);
fill(234, 229, 43);
stroke(0, 0, 0);
ellipse(birdX, birdY, 50, 50);

//pipe
fill(0, 200, 0);
rect(pipeX, pipeY, 50, upperPipeHeight);
pipeX -= pipeSpeed;

fill(0, 200, 0);
rect(pipeX, lpipeY, 50, upperPipeHeight);

  fill(0, 225, 0);
  rect(0, 450, 500, 50);

if(pipeX <= 0){
  pipeX = 400;
  upperPipeHeight = (int) random(100, 400);
  lpipeY = upperPipeHeight + pipeGap;
  score++;
}
boolean touchedPipe = intersectsPipes();

if(touchedPipe == true){
  stop();
}
if(birdY >= 465){
  stop();
}

}

void mousePressed(){
  birdY -= birdV;  
}

 
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
            return true; }
        else if (birdY>lpipeY && birdX > pipeX && birdX < (pipeX+50)) {
            return true; }
        else { return false; }
}
  
