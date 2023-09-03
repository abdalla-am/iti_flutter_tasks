import"dart:io";
import 'Point2D.dart';
import 'Point3D.dart';
void main(){
  //Class Point2D & Class Point3D is required for this main

  Point2D p1=new Point2D();
  Point2D p2 =new Point2D(x:10,y:20);
  print(p1.showData());
  print(p2.showData());

  Point3D p3 =new Point3D();
  Point3D p4 =new Point3D(x:10,y:20,z:30);

  print(p3.showData());
  print(p4.showData());



}