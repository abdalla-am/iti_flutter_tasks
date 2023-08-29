import 'dart:io';
void main(){
  int number ;
  int powerValue;
  int result=1;
  print("please enter a number ");
  number=int.parse(stdin.readLineSync()!);
  print("please enter the power ");
  powerValue=int.parse(stdin.readLineSync()!);

  for(int i=0 ;i<powerValue ;i++) {
    result = result * number;
  }

  print("the result the power is $result");
}