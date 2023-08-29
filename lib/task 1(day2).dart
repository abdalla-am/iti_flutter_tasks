import 'dart:io';

void main(){
  int num ;
  int counter= 0 ;
  print ("Enter a number to produce its product table :");
  num=int.parse(stdin.readLineSync()!);
  do{
    print("$num * $counter = ${num*counter}");
    counter++ ;
  }while(counter<13);

}