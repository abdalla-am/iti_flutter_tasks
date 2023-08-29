import 'dart:io';

void main() {
  List<int> list = [];
  int input;
  do {
    print("list editor");
    print("--------------------------");

    print("press 1 to add value");
    print("press 2 to remove a value");
    print("press 3 to update a value");
    print("press 4 to show values");
    print("press 5 to Search value");
    print("press 6 to exit");
    input = int.parse(stdin.readLineSync()!);
    //add a value
    if (input == 1) {
      int noOfValues;
      print("enter the number of values you will enter");
      noOfValues = int.parse(stdin.readLineSync()!);
      print("enter the values");
      for (int i = 0; i < noOfValues; i++) {
        list.add(int.parse(stdin.readLineSync()!));
      }
    }

    //remove a value
    else if (input == 2) {
      String choice;
      print("how do yo want to delete ?");
      print("By value --> V");
      print("By index --> I");
      choice = stdin.readLineSync()!;
      if (choice == 'V' || choice == 'v') {
        int valueToBeDeleted;
        print("Enter the value to be deleted");
        valueToBeDeleted = int.parse(stdin.readLineSync()!);
        if (list.contains(valueToBeDeleted)) {
          list.remove(valueToBeDeleted);
          print("the value $valueToBeDeleted is deleted");
        } else {
          print("the list does not contains this value");
        }
      } else if (choice == 'I' || choice == 'i') {
        int indexToBeRemoved;
        print("Enter the index at which the value to be deleted");
        indexToBeRemoved = int.parse(stdin.readLineSync()!);
        if (list.length > indexToBeRemoved - 1) {
          list.removeAt(indexToBeRemoved);
        } else {
          print("you entered a wrong index");
        }
      } else {
        print("wrong value entered");
      }
    }

    //update a value
    else if (input == 3) {
      int valueToBeUpdated;
      int newValue;
      print("enter the value you want to update :");
      valueToBeUpdated = int.parse(stdin.readLineSync()!);
      print("enter the new value :");
      newValue = int.parse(stdin.readLineSync()!);
      if (list.contains(valueToBeUpdated)) {
        int indexOfValueToBeUpdated = list.indexOf(valueToBeUpdated);
        list.remove(valueToBeUpdated);
        list.insert(indexOfValueToBeUpdated, newValue);
      } else {
        print("the value is not found in the list");
      }
    }

    //print values
    else if (input == 4) {
      for (int i = 0; i < list.length; i++) {
        print("${list[i]}");
      }
    }
    //Search value
    else if (input == 5) {
      String choice;
      int value;
      print("Found or not found --->F");
      print("Get index --->G");
      choice = stdin.readLineSync()!;
      print("please enter the value: ");
      value = int.parse(stdin.readLineSync()!);

      if (choice == 'F' || choice == 'f') {
        if (list.contains(value)) {
          print("the element is found");
        } else {
          print("the element is not found");
        }
      } else if (choice == 'G' || choice == 'g') {
        if (list.contains(value)) {
          print("the index of value $value is ${list.indexOf(value)}");
        } else {
          print("the element is not found");
        }
      } else {
        print("wrong number entered ");
      }
    }
    else if(input ==6){
      print("Thanks for using the list editor :)");
    }

    else {
      print("wrong number entered");
    }
  } while (input != 6);
}
