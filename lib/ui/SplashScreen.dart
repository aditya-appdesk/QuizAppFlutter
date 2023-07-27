import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_quiz/ui/LoginScreen.dart';
import 'package:my_quiz/ui/ScreenFile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getSpData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreenAccent,
        child: Center(child: Icon(Icons.ac_unit_rounded,color: Colors.deepOrange,size: 200,)),
      )
    );
  }

  Future<void> getSpData() async {
    var sp = await SharedPreferences.getInstance();
    var loginOrNot =sp.getBool("Login");
    if(loginOrNot == true){
      Timer(Duration(seconds: 5),() => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) =>  ScreenFile()),
      )
      );
    }
    else{
      Timer(Duration(seconds: 5),() => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      )
      );
    }
  }
}
