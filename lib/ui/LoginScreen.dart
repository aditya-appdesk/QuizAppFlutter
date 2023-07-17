import 'package:flutter/material.dart';
import 'package:my_quiz/ui/OtpScreen.dart';
import 'package:my_quiz/ui/ScreenFile.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  margin: EdgeInsets.only(top: 80),
                  padding: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("drawables/qa.png"),
                      ),
                      border: Border.all(color: Colors.grey, width: 10),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.brown,
                            blurRadius: 18,
                            offset: Offset(4, 4),
                            spreadRadius: 5),
                      ]),
                ),
                Container(
                  child: Text(
                    "Hey Welcome",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  margin: EdgeInsets.only(top: 60),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Email"),
                    ),
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Password"),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 200,
                    margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                    child: ElevatedButton(
                      child: Text("Login"),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ScreenFile()),
                        );
                      },
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
