

class Car{
  int? model;
  int? chassno;
  String? color;
  double? price;

  Car({int model=0, int chassno=0, String color="o", double price=0}){
    this.model=model;
    this.chassno=chassno;
    this.color=color;
    this.price=price;
  }

  void showdata(){
    print("Model: ${this.model}");
    print("chasse number: ${this.chassno}");
    print("color: ${this.color}");
    print("price: ${this.price}");
  }
}