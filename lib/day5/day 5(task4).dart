import "Car.dart";
import "dart:io";

void main() {
  Car c1 = Car();
  c1.model = 2017;
  c1.chassno = 12345;
  c1.color = "Blue";
  c1.price = 1550000;

  Car c2 = Car();
  print("Enter c2 car model :");
  c2.model = int.parse(stdin.readLineSync()!);
  print("Enter c2 car chasse number :");
  c2.chassno = int.parse(stdin.readLineSync()!);
  print("Enter c2 car color :");
  c2.color = stdin.readLineSync()!;
  print("Enter c2 car price :");
  c2.price = double.parse(stdin.readLineSync()!);

  print("Car 1 model:${c1.model}");
  print("Car 1 chasse number:${c1.chassno}");
  print("Car 1 color:${c1.color}");
  print("Car 1 price:${c1.price} EGP");
  print("---------------------");
  print("Car 2 model:${c2.model}");
  print("Car 2 chasse number:${c2.chassno}");
  print("Car 2 color:${c2.color}");
  print("Car 2 price:${c2.price} EGP");
}
