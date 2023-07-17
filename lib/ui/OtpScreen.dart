import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       margin: EdgeInsets.all(50),
       child: Container(
         child: Row(
           children: [TextField(
             keyboardType: TextInputType.number,
             maxLength: 6,)],
         ),
       )
     ),

   );
  }
}
