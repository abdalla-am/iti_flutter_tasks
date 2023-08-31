import "dart:io";

void main() {
  String name;
  int code;
  double degree1;
  double degree2;
  double degree3;
  double degree4;
  double degree5;
  double totalDegree;
  double percentage;
  String? grade;

  print("Please enter your name :");
  name = stdin.readLineSync()!;

  print("enter your student code :");
  code = int.parse(stdin.readLineSync()!);

  print("Enter your first degree : (../50)");
  degree1 = double.parse(stdin.readLineSync()!);

  print("Enter your second degree : (../50)");
  degree2 = double.parse(stdin.readLineSync()!);

  print("Enter your third degree : (../50)");
  degree3 = double.parse(stdin.readLineSync()!);

  print("Enter your fourth degree : (../50)");
  degree4 = double.parse(stdin.readLineSync()!);

  print("Enter your fifth degree : (../50)");
  degree5 = double.parse(stdin.readLineSync()!);

  totalDegree = degree1 + degree2 + degree3 + degree4 + degree5;
  percentage = (totalDegree * 100) / 250;

  if (percentage >= 86) {
    grade = "excellent";
  } else if (percentage >= 76) {
    grade = "very good";
  } else if (percentage >= 66) {
    grade = "good";
  } else if (percentage >= 50) {
    grade = "pass";
  } else if (percentage < 50) {
    grade = "fail";
  }

  print("---------------------");
  print("your name is $name");
  print("your student code is $code");
  print("first degree = $degree1");
  print("Second degree = $degree2");
  print("Third degree = $degree3");
  print("fourth degree = $degree4");
  print("fifth degree = $degree5");
  print("total degree = $totalDegree/250");
  print("percentage= $percentage% ");
  print("your grade is $grade ");
  print("---------------------");
}
