import'dart:io';
void main(){
  int teaQuantity;
  int sugarQuantity;
  int riceQuantity;
  double totalPrice;

  print("How many packs do you need from tea :");
  teaQuantity=int.parse(stdin.readLineSync()!);
  print("How many packs do you need from sugar :");
  sugarQuantity=int.parse(stdin.readLineSync()!);
  print("How many packs do you need from rice :");
  riceQuantity=int.parse(stdin.readLineSync()!);

  if(teaQuantity!=0){
    print("Price of $teaQuantity packs of tea =${25.5*teaQuantity}");
  }
  if(sugarQuantity!=0){
    print("Price of $sugarQuantity packs of sugar =${18.25*sugarQuantity}");
  }
  if(riceQuantity!=0){
    print("Price of $riceQuantity packs of rice =${21.5*riceQuantity}");
  }

  totalPrice=(25.5*teaQuantity)+(18.25*sugarQuantity)+(21.5*riceQuantity);
  print("Total price is :$totalPrice");
}