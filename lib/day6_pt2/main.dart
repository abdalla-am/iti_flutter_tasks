import 'dart:io';

import 'Course.dart';
import 'Coursera.dart';
import 'Lecture.dart';
import 'Sheet.dart';
import 'Teacher.dart';

void main() {
  // Course,Coursera,Lecture,Sheet and teacher classes are needed for this program
  int? input;
  Coursera c = Coursera();
  Teacher t = Teacher();
  Course course=Course();

  do {
    print("      -------------------      ");
    print("press 1 to register a teacher");
    print("press 2 to login a teacher");
    print("press 3 to add a new course");
    print("press 4 to delete an existing course");
    print("press 5 to add a new lecture");
    print("press 6 to delete an existing lecture");
    print("press 7 to add a new sheet");
    print("press 8 to delete an existing sheet");
    print("      -------------------      ");
    print("press 9 to show all teachers");
    print("press 10 to show all lectures");
    print("press 11 to show all sheets");
    print("press 12 to show all Courses");
    print("      -------------------      ");
    print("        press 0 to Quit");
    print("      -------------------      ");
    input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        //register a teacher
        print("Enter your name ");
        String name = stdin.readLineSync()!;
        print("Enter your email ");
        String email = stdin.readLineSync()!;
        print("Enter your password ");
        String password = stdin.readLineSync()!;
        c.Register(
            teacherName: name, teacherEmail: email, teacherPassword: password);
        break;

      case 2:
        //login a teacher
        print("Enter your name ");
        String name = stdin.readLineSync()!;
        print("Enter your password ");
        String password = stdin.readLineSync()!;
        c.Login(teacherName: name, teacherPassword: password);
        break;

      case 3:
        //add anew course
        Course courseToBeAdded = Course();
        print("Enter the new course name:");
        courseToBeAdded.courseName = stdin.readLineSync()!;
        print("Enter the new course description:");
        courseToBeAdded.courseDescription = stdin.readLineSync()!;
        print("--------------Course lectures--------------");
        print("How many lecture you will enter ?");
        int noOfLectures = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < noOfLectures; i++) {
          Lecture l = Lecture();
          print("enter lecture ${i + 1} name");
          l.lecName = stdin.readLineSync()!;
          print("enter lecture ${i + 1} description");
          l.lecDescription = stdin.readLineSync()!;
          print("enter lecture ${i + 1} filename");
          l.lecFileName = stdin.readLineSync()!;
          courseToBeAdded.lecture.add(l);

        }
        print("--------------Course Sheets--------------");
        print("How many Sheets you will enter ?");
        int noOfSheets = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < noOfSheets; i++) {
          Sheet s = Sheet();
          print("enter Sheet ${i + 1} number");
          s.sheetNumber = int.parse(stdin.readLineSync()!);
          print("enter Sheet ${i + 1} description");
          s.sheetDescription = stdin.readLineSync()!;
          print("enter Sheet ${i + 1} filename");
          s.sheetFileName = stdin.readLineSync()!;
          courseToBeAdded.sheet.add(s);
        }
        t.addNewCourse(c: courseToBeAdded);
        break;

      case 4:
        //delete an exiting course
        print("please enter the course name you want to delete :");
        String courseNameToBeDeleted=stdin.readLineSync()!;
        t.deleteCourse(courseName: courseNameToBeDeleted);
        break;


      case 5:
        //add a new lecture

        Lecture l = Lecture();
        print("enter new lecture name");
        l.lecName = stdin.readLineSync()!;
        print("enter new lecture description");
        l.lecDescription = stdin.readLineSync()!;
        print("enter new lecture filename");
        l.lecFileName = stdin.readLineSync()!;
        course.addNewLec(l);

        break;

      case 6:
        //delete an existing lecture
        Lecture l = Lecture();
        print("Enter the details of lecture you want to delete :");
        print("name:");
        l.lecName = stdin.readLineSync()!;
        print("description :");
        l.lecDescription = stdin.readLineSync()!;
        print("filename :");
        l.lecFileName = stdin.readLineSync()!;
        course.deleteLec(l);

        break;


      case 7:
        //add new sheet
        Sheet s=Sheet();
        print("enter new sheet name");
        s.sheetNumber = int.parse(stdin.readLineSync()!);
        print("enter new sheet description");
        s.sheetDescription = stdin.readLineSync()!;
        print("enter new sheet filename");
        s.sheetFileName = stdin.readLineSync()!;
        course.addNewSheet(s);
        break;

      case 8:
        //delete an existing sheet
        Sheet s =Sheet();
        print("Enter the details of Sheet you want to delete :");
        print("name:");
        s.sheetNumber=int.parse(stdin.readLineSync()!);
        print("description :");
        s.sheetDescription = stdin.readLineSync()!;
        print("filename :");
        s.sheetFileName = stdin.readLineSync()!;
        course.deleteSheet(s);

        break;

      case 9 :
       c.showAllTeachers();
        break;

      case 0:
        print("the system has quited ,GoodBye");
        break;

      default:
        print("Wrong number entered ,Please try again");
        break;

    }
  } while (input != 0);
}
