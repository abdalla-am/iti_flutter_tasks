import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(
              child: Text("Counter", style: TextStyle(color: Colors.white)),
            )),
        body: Container(
          width: double.infinity,
          color: Colors.blueGrey[600],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                counter.toString(),
                style: (const TextStyle(fontSize: 50)),
              ),
              MaterialButton(
                onPressed: () {counter--;
                  setState(() {

                  });},
                child: Icon(Icons.exposure_minus_1),
                color: Colors.white,
              ),
              MaterialButton(
                onPressed: () {counter=0;
                  setState(() {

                  });},
                child: Icon(Icons.restart_alt),
                color: Colors.white,
              ),
              MaterialButton(
                onPressed: () {counter++;
                  setState(() {

                  });},
                child: Icon(Icons.exposure_plus_1),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
