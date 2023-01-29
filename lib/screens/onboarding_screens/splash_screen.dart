import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sample_2/screens/gender_selection/gender_selection.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
   static String routeName = "splash_screen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }
  timer(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushNamed(context, GenderSelection.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash Screen")),
    );
  }
}