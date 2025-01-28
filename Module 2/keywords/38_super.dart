// Super class Car   
class Car  
{   
    int speed = 180;   
}   
    
// sub class Bike extending Car   
class Bike extends Car   
{   
    int speed = 110;   
    
    void display()   
    {   
        //print varible of the base class (Bike)  
        print("The speed of car: ${super.speed}");  
    }   
}   
void main() {  
// Creating object of sub class  
Bike b = new Bike();  
b.display();  
}    