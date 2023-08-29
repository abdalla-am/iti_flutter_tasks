import 'dart:io';

void main() {
  List<int> list = [];
  int noOfValues;
  int sum = 0;
  int min;
  int max;
  print("please enter the number of values you want to enter :");
  noOfValues = int.parse(stdin.readLineSync()!);
  print("enter the numbers");
  for (int i = 0; i < noOfValues; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  //print the list
  print("the list components :");
  for (int i = 0; i < noOfValues; i++) {
    print(list[i]);
  }
  //print the sum of the list
  for (int i = 0; i < noOfValues; i++) {
    sum += list[i];
  }
  print("the sum of the list is $sum");

  //print the average
  print("the average = ${sum / noOfValues}");

  //print the min value
  min = list[0];
  for (int i = 1; i < noOfValues; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  print("min value =$min");

  //print the max value
  max = list[0];
  for (int i = 1; i < noOfValues; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  print("max value =$max");
}
