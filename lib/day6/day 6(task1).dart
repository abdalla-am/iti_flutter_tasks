import"dart:io";
import"Car.dart";
void main(){


//car class is required for this task
  Car c1 =Car();
  c1.showdata();
  Car c2 =Car(model:2005 ,chassno: 2345654 ,color:'Black',price: 300000);
  c2.showdata();


}