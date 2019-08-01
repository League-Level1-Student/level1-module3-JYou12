void setup(){
 size(500, 500);

}

int frogX = 250;
int frogY = 250;
int frogHop;

 Car car = new Car(-100, 100, 100, 5);
 Car car1 = new Car(-100, 100, 100, 5);
 Car car2 = new Car(-100, 100, 100, 5);
 Car car3 = new Car(-100, 100, 100, 5);
 Car car4 = new Car(-100, 100, 100, 5);
 Car car5 = new Car(-100, 100, 100, 5);

void draw(){
  background(0, 0, 250);

fill(0, 200, 0);
ellipse(frogX, frogY, 50, 50);

car.display();
car1.display();
car2.display();
car3.display();
car4.display();
car5.display();

car.carMove();

if(intersects(car1) == true){
  
frogX = 250;
frogY = 250;
}
}

  
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP && !(frogY == 50))
        {
        frogY -= 50;
}
        else if(keyCode == DOWN && !(frogY == 450))
        {
        frogY += 50;
        }
        else if(keyCode == RIGHT && !(frogX == 450))
        {
            frogX += 50;
        }
        else if(keyCode == LEFT && !(frogX == 50))
        {
            frogX -= 50;
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
 
