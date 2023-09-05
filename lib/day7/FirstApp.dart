import 'package:flutter/material.dart';
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueGrey[700],
              actions: [
                IconButton(
                    onPressed: () {
                      print("Icon button activated");
                    },
                    icon: Icon(Icons.ac_unit_rounded)),
                InkWell(
                  onTap: () {
                    print("InkWell working");
                  },
                  child: Icon(Icons.add_circle),
                )
              ],
              title: const Center(
                child: Text('Abdalla ayman',
                    style: TextStyle(color: Colors.black)),
              )),
          backgroundColor: Colors.blueGrey[400],
          body: const Center(
            child: Text(
              'Computer Science',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
        ));
  }
}