class Point2D{

  late double _x ;
  late double _y ;

  Point2D({double x=0, double y=0}){
    this._x=x;
    this._y=y;
  }

  double getx()=> this._x ;
  double gety()=> this._y ;
  void setx(double x) => this._x=x;
  void sety(double y) => this._y=y;

  List<double> getxy(){
    List<double> l1 = List<double>.empty(growable: true);
    l1.add(this._x);
    l1.add(this._y);
    return l1;

  }

  void setxy({double x=0, double y=0}){
    this._x=x;
    this._y=y;
  }
  String showData(){
    return this.getxy().toString();
  }

}
