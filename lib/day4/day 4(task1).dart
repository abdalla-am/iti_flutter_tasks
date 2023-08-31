import"dart:io";
void main(){
  Map map1={};
  int noOfElements;
  String key;
  int value;
  print ("enter the numbers of elements you want to add in the map :");
  noOfElements =int.parse(stdin.readLineSync()!);
  for(int i=1 ;i<=noOfElements ;i++){
    print("Enter the key of element $i");
    key=(stdin.readLineSync()!);
    print("Enter the value of element $i");
    value=int.parse(stdin.readLineSync()!);
    map1[key]=value;
  }
  map1.forEach((key, value) {
    print(value);
  });
}