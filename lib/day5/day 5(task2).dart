import "dart:io";

void main() {
  List<double> l = [];

  getList(l);
  showList(l);
  print("The  sum =${sumList(l)}");
  print("The average =${AVGList(l)}");
  print("Min = ${MaxandMin(l)["Min"]} ");
  print("Max = ${MaxandMin(l)["Max"]} ");
}

void getList(List<double> list) {
  int noOfValues;
  print("enter the number of values you will enter");
  noOfValues = int.parse(stdin.readLineSync()!);
  print("enter the values");
  for (int i = 0; i < noOfValues; i++) {
    list.add(double.parse(stdin.readLineSync()!));
  }
}

void showList(List<double> list) {
  for (int i = 0; i < list.length; i++) {
    print("${list[i]}");
  }
}

double sumList(List<double> list) {
  double sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  return sum;
}

double AVGList(List<double> list) {
  double sum = 0;
  double average;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  average = (sum / list.length);
  return average;
}

Map MaxandMin(List<double> list) {
  Map<String, double> map = {};
  double min;
  min = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }

  double max;
  max = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }

  map["Min"] = min;
  map["Max"] = max;

  return map;
}
