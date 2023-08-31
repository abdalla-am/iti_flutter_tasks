import "dart:io";

void main() {
  Map<String, dynamic> map1 = {};
  int noOfElements;
  String key;
  int value;
  int input;

  print("map editor");
  print("--------------------------");

  do {
    print("press 1 to add value");         //done
    print("press 2 to remove a value");    //done
    print("press 3 to update a value");    //done
    print("press 4 to show values");       //done
    print("press 5 to Search value");
    print("press 6 to exit");              //done
    input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      print("enter the numbers of elements you want to add in the map :");
      noOfElements = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= noOfElements; i++) {
        print("Enter the key of element $i");
        key = (stdin.readLineSync()!);
        print("Enter the value of element $i");
        value = int.parse(stdin.readLineSync()!);
        map1[key] = value;
      }
    }
    else if (input == 2) {
      String entered;
      int value;
      String key;
      print("press (a) to remove by value");
      print("press (b) to remove by key");
      entered = stdin.readLineSync()!;
      switch (entered) {
        case 'a':
        case 'A':
          print("enter the value to be removed :");
          value = int.parse(stdin.readLineSync()!);
          if (map1.containsValue(value)) {
            String keyOfValueToBeDeleted = map1.keys
                .firstWhere((k) => map1[k] == value);
            map1.remove(keyOfValueToBeDeleted);
          }

          break;
        case 'b':
        case 'B':
          print("enter the key to be removed :");
          key = stdin.readLineSync()!;
          if (map1.containsKey(key)) {
            map1.remove(key);
          } else {
            print("there is no element in the map with a key $key");
          }
          break;
        default:
          print("Wrong input entered");
      }
    }



    else if (input == 3) {
      int oldValue;
      int newValue;
      print("Enter the old value to be removed");
      oldValue = int.parse(stdin.readLineSync()!);
      if (map1.containsValue(oldValue)) {
        print("Enter the new value to be stored");
        newValue = int.parse(stdin.readLineSync()!);
        String keyOfValueToBeUpdated = map1.keys
            .firstWhere((k) => map1[k] == oldValue);
        map1[keyOfValueToBeUpdated]=newValue;
      }
      else {
        print("The old number you entered to be updated is not found ");
      }
    }



    else if (input == 4) {
      map1.forEach((key, value) {
        print(value);
      });
    }


    else if (input == 5) {
      print("1) search a value Found or not found \n2)Get the key of a value if found");
      int input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        print('enter the value :');
        int value = int.parse(stdin.readLineSync()!);
        if(map1.containsValue(value))
          print('Found');
        else
          print('Not Found');

      }
      else if (input == 2) {
        print('enter the value :');
        int value = int.parse(stdin.readLineSync()!);

        if(map1.containsValue(value)){
          String keyOfSearched = map1.keys
              .firstWhere((k) => map1[k] == value);
          print("the key of value $value is ($keyOfSearched)");
        }
        else{
          print("The value does not exist in the map.");
        }

      }
      else {
        print("Wrong value entered");
      }
    }


    else if (input == 6) {
      print("Thank you for using out map editor");
    }
    else {
      print("Wrong number entered ,Try again");
    }
  } while (input != 6);
}
