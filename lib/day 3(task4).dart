import 'dart:io';
void main(){
  int beginNumber;
  int endNumber;
  int tableLowerBoundry;
  int tableUpperBoundry;

  print("Product table generator");
  print("-------------------------------");

  print("please enter the begining number of the product table");
  beginNumber =int.parse(stdin.readLineSync()!);
  print("please enter the ending number of the product table");
  endNumber =int.parse(stdin.readLineSync()!);
  print("please enter the Lower boundry of the product table");
  tableLowerBoundry =int.parse(stdin.readLineSync()!);
  print("please enter the highest boundry of the product table");
  tableUpperBoundry =int.parse(stdin.readLineSync()!);

  for(int i=beginNumber ;i<=endNumber ;i++)
  {
    for(int j=tableLowerBoundry ;j<=tableUpperBoundry ;j++){
      print("$i * $j = ${i*j}");

    }
    print("-----------------------");
  }
}