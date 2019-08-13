PImage back;
PImage frog;
void setup(){
 size(500, 500);

  textSize(32);
  
  back = loadImage("Corona-SDK_Frogger_Part-1_5.png");
  back.resize(500, 500);
  
  frog = loadImage("Frogger.png");
}

int frogX = 250;
int frogY = 500;
int frogHop;
int trys = 0;

 Car car = new Car(-100, 50, 100, 6);
 Car car1 = new Car(-300, 300, 100, 4);
 Car car2 = new Car(-500, 100, 100, 1);
 Car car3 = new Car(-700, 100, 100, 3);
 Car car4 = new Car(-900, 200, 100, 5);
 Car car5 = new Car(-1100, 200, 100, 2);

void draw(){
   
if(intersects(car)){
carReset();

}
if(intersects(car1)){
carReset();

}
if(intersects(car2)){
carReset();

}
if(intersects(car3)){
carReset();

}
if(intersects(car4)){
 carReset();

}
if(intersects(car5)){
carReset();
}
  
  background(back);
    text("Attempt: " + trys, 50, 50);

 if(frogY <= 50){
          textSize(50);
          text("You Win!", 200, 200);
          stop();
        }

//fill(0, 200, 0);
//ellipse(frogX, frogY, 50, 50);
   image (frog, frogX, frogY, 50, 50);

car.display();
car1.display();
car2.display();
car3.display();
car4.display();
car5.display();

car.carMove();
car1.carMove();
car2.carMove();
car3.carMove();
car4.carMove();


}

  
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP && !(frogY == 50))
        {
        frogY -= 10;
}
        else if(keyCode == DOWN && !(frogY == 450))
        {
        frogY += 10;
        }
        else if(keyCode == RIGHT && !(frogX == 450))
        {
            frogX += 10;
        }
        else if(keyCode == LEFT && !(frogX == 50))
        {
            frogX -= 10;
        }
        
    }
}

class Car{
  
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
  
  void display(){
   fill(0, 255, 0);
   rect(carX, carY, carSize, 50);

  }
  
  void carMove(){
   
    this.carX += carSpeed;
    
    if(this.carX == 450){
     this.carX = -100;  
    }
    
  }
  
  
  int getX(){
    return carX;
  }
  
    int getY(){
    return carY;
  }
  
    int getSize(){
     return carSize; 
    }
}


boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
    (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
 
 void carReset(){
  
  trys ++;
   frogX = 250;
frogY = 450;
   
 }
