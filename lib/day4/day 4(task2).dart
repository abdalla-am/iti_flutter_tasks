import"dart:io";

void main() {
  Map map1 = {};
  int noOfElements;
  String key;
  int value;
  int sumResult =0;
  int minValue;
  int maxValue;
  print("enter the numbers of elements you want to add in the map :");
  noOfElements = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= noOfElements; i++) {
    print("Enter the key of element $i");
    key = (stdin.readLineSync()!);
    print("Enter the value of element $i");
    value = int.parse(stdin.readLineSync()!);
    map1[key] = value;
  }

  map1.forEach((key, value) {
    print(value);
  });

  for (int value in map1.values) {
    sumResult += value ;
  }
  print("the sum of map elements = $sumResult");
  print("average of the map values = ${sumResult/noOfElements}");

  maxValue=map1.values.reduce(
          (value, element) => value >element ? value :element );

  minValue=map1.values.reduce(
          (value, element) => value < element ? value :element );

  print("the minimum value is $minValue");
  print("the maximum value is $maxValue");

}