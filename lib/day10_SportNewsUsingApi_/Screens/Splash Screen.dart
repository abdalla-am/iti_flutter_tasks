import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iti_flutter_tasks/day10_SportNewsUsingApi_/Screens/chooseCountry.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                chooseCountry()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body:Center(child:Image.asset("assets/images/sportsLogo.png" ,width: 300,height: 100,))
    );;
  }
}

