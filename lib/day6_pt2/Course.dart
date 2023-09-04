import 'Lecture.dart';
import 'Sheet.dart';

class Course {
  String? courseName;
  String? courseDescription;
  List<Lecture> lecture = [];
  List<Sheet> sheet = [];

  void addNewLec(Lecture l) {
    lecture.add(l);
    print("lecture added successfully");
  }

  void deleteLec(Lecture l) {
    lecture.remove(l);
    print("lecture removed successfully");
  }

  void addNewSheet(Sheet s) {
    sheet.add(s);
    print("sheet added successfully");
  }

  void deleteSheet(Sheet s) {
    sheet.remove(s);
    print("sheet removed successfully");
  }
}
