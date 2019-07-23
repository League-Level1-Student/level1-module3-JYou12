void setup(){
 size(500, 500);

}

int frogX = 250;
int frogY = 250;
int frogHop;

 Car car = new Car(10, 100, 100, 10);
 Car car1 = new Car(10, 100, 100, 10);
 Car car2 = new Car(10, 100, 100, 10);
 Car car3 = new Car(10, 100, 100, 10);
 Car car4 = new Car(10, 100, 100, 10);
 Car car5 = new Car(10, 100, 100, 10);

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
  
}
