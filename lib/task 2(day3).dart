import 'dart:io';

void main() {
  int counter = 1;
  for (int i = 0; i < 5; i++) {
    for (int i = 0; i < counter; i++) {
      stdout.write("*");
    }
    counter=counter +2 ;
    print(" ");
  }
}
