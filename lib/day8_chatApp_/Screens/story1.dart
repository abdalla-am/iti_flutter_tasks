import 'package:flutter/material.dart';
import '../Modules/Story.dart';

class Story1Details extends StatelessWidget {
  Story? data;
  Story1Details(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueGrey[700],
              actions: [],
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      data!.urlProfile.toString(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Center(
                      child: Text(data!.name.toString(),
                          style: TextStyle(color: Colors.black))),
                ],
              )),
          backgroundColor: Colors.blueGrey[200],
          body:Center(child: Image.asset(data!.urlStory.toString(),),)
          ),
    );
  }
}
