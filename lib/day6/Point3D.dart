import 'Point2D.dart';

class Point3D extends Point2D{
  late double _z ;

  Point3D({double x=0, double y=0 ,double z=0}){
    super.setx(x);
    super.sety(y);
    this._z=z;
  }

  double getz()=> this._z ;
  void setz(double z) => this._z=z;

  List<double> getxyz(){
    List<double> l2 = List<double>.empty(growable: true);
    l2.add(super.getx());
    l2.add(super.gety());
    l2.add(this._z);
    return l2;

  }

  void setxyz({double x=1, double y=1 ,double z=0}){
    super.setx(x);
    super.sety(y);
    this._z=z;
  }
  String showData(){
    return this.getxyz().toString();
  }
}