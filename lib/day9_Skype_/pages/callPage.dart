import 'package:flutter/material.dart';

class callPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color:Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(child: Image.asset("assets/images/call.png"),),
        ),

    );
  }
}
