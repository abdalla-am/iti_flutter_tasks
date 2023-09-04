import 'Course.dart';

class Teacher {
  //name,email,pass
  String? teacherName;
  String? teacherEmail;
  String? teacherPassword;
  List<Course> courses = [];

  void addNewCourse({required Course c}) {
      courses.add(c);
      print("Course added succesfully");
  }

  void deleteCourse({required String courseName}) {
    bool courseFound=false;
    int indexOfCourseFound=0;

    for (int i = 0; i < courses.length; i++) {
      if(courseName==courses[i].courseName){
        courseFound=true;
        indexOfCourseFound=i;
        break;
      }
    }


    if(courseFound==true){
      Course courseToBeDeleted = courses[indexOfCourseFound];
      courses.remove(courseToBeDeleted);
      print("Course removed successfully");
    }
    else{
      print("The course you entered its name is not found");
    }
  }


}
