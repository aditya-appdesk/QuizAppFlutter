import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int userPercentage;
  final int totalRight;
  final int wrongQ;
  final int ommitedQuestion;

  Result({
    super.key,
    required this.userPercentage,
    required this.totalRight,
    required this.wrongQ,
    required this.ommitedQuestion,
  });

  @override
  Widget build(BuildContext context) {
    print(userPercentage);
    print(totalRight);
    print(wrongQ);
    print(ommitedQuestion);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quiz App".toUpperCase()),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("aditya@AppdeskServices.com"),
                accountName: Text("Aditya"),
                currentAccountPicture: CircleAvatar(
                  foregroundColor: Colors.orange,
                  foregroundImage: AssetImage("drawables/man.png"),
                ),
              ),
              ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 20,
                  ),
                  title: Text(
                    "Profile".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {}),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 20,
                  ),
                  title: Text(
                    "Share".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {}),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 20,
                  ),
                  title: Text(
                    "Logout".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {}),
            ],
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              margin: EdgeInsets.only(top: 40),
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
                "Hey Your Result ",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              margin: EdgeInsets.only(top: 60),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text( "Right Ans :${totalRight}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.cyan), )
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text( "Wrong Ans :${wrongQ}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red), )
            ), Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text( "Skipped Questions :${ommitedQuestion}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.blueAccent), )
            ),
          ],
        ),
      ),
    );
  }
}
