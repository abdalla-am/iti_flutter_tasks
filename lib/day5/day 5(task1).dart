import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];


  print("number of students");
  int noOfStudents = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < noOfStudents; i++) {
    print("Name of student ${i + 1}");
    String name = stdin.readLineSync()!;
    print("code for $name ${i + 1}");
    int code = int.parse(stdin.readLineSync()!);
    print("numbers of courses");
    int noOfCourses = int.parse(stdin.readLineSync()!);
    List<double> degrees = [];
    for (int j = 0; j < noOfCourses; j++) {
      print("degree of course ${j + 1}");
      double degree = double.parse(stdin.readLineSync()!);
      degrees.add(degree);
    }
    double sum = degrees.reduce((a, b) => a + b) as double ;
    double percentage = sum / degrees.length;

    String grade = "";
    if (percentage >= 86) {
      grade = "excellent";
    } else if (percentage >= 76) {
      grade = "very good";
    } else if (percentage >= 66) {
      grade = "good";
    } else if (percentage >= 50) {
      grade = "pass";
    } else {
      grade = "fail";
    }

    Map<String, dynamic> student = {
      "name":name ,
      "code":code ,
      "degree":degrees ,
      "sum":sum,
      "pecentage":percentage,
      "grade":grade
    };
    students.add(student);
  }
  print(students);
}
