import "dart:io";
import "Car.dart";

void main() {
  List<Car>? listOfCars = [];
  int noOfCars;
  double? totalPriceOfCars = 0.0;
  print("enter the number of cars : (2 or more)");
  noOfCars = int.parse(stdin.readLineSync()!);
  if (noOfCars >= 2) {
    for (int i = 1; i <= noOfCars; i++) {
      Car car = new Car();
      print("Enter car $i model :");
      car.model = int.parse(stdin.readLineSync()!);
      print("Enter car $i chasse number :");
      car.chassno = int.parse(stdin.readLineSync()!);
      print("Enter car $i color :");
      car.color = stdin.readLineSync()!;
      print("Enter car $i price :");
      car.price = double.parse(stdin.readLineSync()!);

      totalPriceOfCars = totalPriceOfCars! + car.price!;
      listOfCars.add(car);
    }
    for (int i = 0; i < noOfCars; i++) {
      print("model is ${listOfCars[i].model}");
      print("chasse number is ${listOfCars[i].chassno}");
      print("Car color is ${listOfCars[i].color}");
      print("Price= ${listOfCars[i].price}");
      print("------------------------");
    }
    print("Total price is equal $totalPriceOfCars ");
  }
  else {
    print("Wrong number entered , Enter two cars or more ");
  }
}
