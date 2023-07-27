import 'package:flutter/material.dart';

import 'package:my_quiz/ui/SplashScreen.dart';

void main() {
  runApp(MyAppData());
}

class MyAppData extends StatelessWidget {
  const MyAppData({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "NewApp",
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home:SplashScreen()
    );
  }
}
