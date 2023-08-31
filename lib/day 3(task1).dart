import 'dart:io';

void main() {
  int number;
  int input;
  int sumResult = 0;
  int factResult =1;

  print("please enter a number :");
  number = int.parse(stdin.readLineSync()!);
  print("enter 1 to sum ");
  print("enter 2 to factorial");
  input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    for (int i = number; i >= 0; i--) {    //n ,n-1,n-2,n-3 , ...., 0
      sumResult += i;
    }
    print("Sum = $sumResult");
  }
  else if(input==2){
    for (int i = number; i >= 1; i--) {    //n ,n-1,n-2,n-3 , ...., 1
      factResult *= i;
    }
    print("Factorial result = $factResult");
  }
  else
  {
    print("Wrong number entered");
  }
}
