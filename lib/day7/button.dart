
import 'package:flutter/material.dart';

Widget Button1({required String char, required Function() event}) {
  return MaterialButton(
    onPressed: event,
    color: Colors.amber,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Text(char),
height: 70,
    minWidth: 100,

  );
}

Widget Button2({required String char, required Function() event}) {
  return MaterialButton(
    onPressed: event,
    color: Colors.limeAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Text(char),
    height: 50,
    minWidth: 85,

  );
}

