import "dart:io";

void main() {
  String marriedOrSingle;
  print("Salary Setter");
  print("----------------");
  print("Are you single or maried ? (S/M)");
  marriedOrSingle = stdin.readLineSync()!;

  if (marriedOrSingle == 'S' || marriedOrSingle == 's') {
    int yearsOfExperience;
    print("Enter your experience years :");
    yearsOfExperience = int.parse(stdin.readLineSync()!);
    if (yearsOfExperience < 0) {
      print("wrong number entered ");
    } else if (yearsOfExperience > 0 && yearsOfExperience <= 5) {
      print("your Salary =${1000 + (yearsOfExperience * 200)}  ");
    } else if (yearsOfExperience > 5 && yearsOfExperience <= 10) {
      print("your Salary =${1500 + (yearsOfExperience * 400)}  ");
    } else {
      print("your Salary =${2000 + (yearsOfExperience * 600)}  ");
    }
  }
  else if (marriedOrSingle == 'M' || marriedOrSingle == 'm') {
    int noOfChildren;
    print("How many children do you have ?");
    noOfChildren = int.parse(stdin.readLineSync()!);
    if(noOfChildren<0){
      print("wrong number entered ");
    }
    else if(noOfChildren>0 && noOfChildren <=3){
      print("your Salary =${1200+(noOfChildren*150)}");
    }
    else if(noOfChildren>3 && noOfChildren<=6){
      print("your Salary =${1800+(noOfChildren*250)}");
    }
    else{
      print("your Salary =${2000+(noOfChildren*300)}");
    }

  }

  else {
    print("wrong number entered");
  }
}
