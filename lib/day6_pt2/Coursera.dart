import 'Teacher.dart';

class Coursera {
  List<Teacher> teacherList = [];

  void Register(
      {required String? teacherName,
      required String? teacherEmail,
      required String? teacherPassword}) {
    Teacher t1 = new Teacher();
    t1.teacherName = teacherName;
    t1.teacherEmail = teacherEmail;
    t1.teacherPassword = teacherPassword;

    this.teacherList.add(t1);
    print("Register done succesfully");
  }

  void Login({required String? teacherName, required String? teacherPassword}) {
    bool teacherFound = false;
    int indexOfFoundTeacher = 0;

    Teacher t1 = new Teacher();
    t1.teacherName = teacherName;
    t1.teacherPassword = teacherPassword;

    for (int i = 0; i < teacherList.length; i++) {
      if (t1.teacherName == teacherList[i].teacherName &&
          t1.teacherPassword == teacherList[i].teacherPassword) {
        teacherFound = true;
        indexOfFoundTeacher = i;
        break;
      }
    }

    //if teacher account exist
    if (teacherFound == true) {
      print("you loginned in successfully ,Welcome");
    }

    if (teacherFound == false) {
      print("this acc is not found ,please register first");
    }
  }

  void showAllTeachers() {
    for (int i = 0; i < teacherList.length; i++) {
      print("      Teacher${i + 1}      ");
      print("name:${teacherList[i].teacherName}");
      print("email:${teacherList[i].teacherEmail}");
      if (teacherList[i].courses.isNotEmpty) {
        print("teacher${i + 1} Courses: ");
        for (int j = 0; i < teacherList[i].courses.length; i++) {
          print("$j. ${teacherList[i].courses[j]} ");
        }
      }
      else {
        print("This teacher has no courses");
      }
    }
  }

  void showAllCourses(){

  }
}
