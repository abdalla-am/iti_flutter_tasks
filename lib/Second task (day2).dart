import 'dart:io';

void main() {
  String Y_OR_N;
  bool condition = true;
  int productNumber;
  int Quantity1 = 0;
  int Quantity2 = 0;
  int Quantity3 = 0;
  double total = 0;

  do {
    print("Products:");
    print("1-Tea --> 50.5 EGP");
    print("2-Sugar --> 20.25 EGP");
    print("3-Rice --> 25.5 EGP");
    print("---------------");
    print("Enter the no of chosen product :");
    productNumber = int.parse(stdin.readLineSync()!);
    if (productNumber == 1) {
      print("Enter the Quantity needed 0f Tea packages :");
      Quantity1 += int.parse(stdin.readLineSync()!);
    } else if (productNumber == 2) {
      print("Enter the Quantity needed 0f Sugar packages :");
      Quantity2 += int.parse(stdin.readLineSync()!);
    } else if (productNumber == 3) {
      print("Enter the Quantity needed 0f Rice Packages :");
      Quantity3 += int.parse(stdin.readLineSync()!);
    } else {
      print("wrong number entered ");
    }

    print("Other order ? Y or N ");
    Y_OR_N = stdin.readLineSync()!;
    if (Y_OR_N == 'Y' || Y_OR_N == 'y') {
      condition = true;
    } else if (Y_OR_N == 'N' || Y_OR_N == 'n') {
      condition = false;
    } else {
      //must be handled
      print("wrong value entered ");
    }
  } while (condition);

  print("Price & Orders you ordered :");
  if (Quantity1 != 0) {
    print("$Quantity1 tea packages   ---> ${Quantity1 * 50.5} EGP");
  }
  if (Quantity2 != 0) {
    print("$Quantity2 Sugar packages ---> ${Quantity1 * 20.25} EGP");
  }
  if (Quantity3 != 0) {
    print("$Quantity1 Rice packages  ---> ${Quantity1 * 25.5} EGP");
  }

  total = (Quantity1 * 50.5) + (Quantity2 * 20.25) + (Quantity3 * 25.5);

  print("Total =$total");
  print("thanks");
}
