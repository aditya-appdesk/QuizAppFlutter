import 'package:flutter/material.dart';
import 'package:my_quiz/ui/LoginScreen.dart';
import 'package:my_quiz/ui/Result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenFile extends StatefulWidget {
  ScreenFile({super.key});

  @override
  State<ScreenFile> createState() => _ScreenFileState();
}

class _ScreenFileState extends State<ScreenFile> {
  final List quizListData = [
    {
      "id": 1,
      "answer": "Nariender Modi",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Who is PM of INDIA ?",
      "options": [
        {
          "option": "a",
          "value": "You",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Me",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Rahul Gandhi",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Nariender Modi",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 2,
      "answer": "Cricketer",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Virat Kholi is a _ ?",
      "options": [
        {
          "option": "a",
          "value": "Actor",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Politican",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Cricketer",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "bodyBuilder",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 3,
      "answer": "Messi",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Who is Footballer",
      "options": [
        {
          "option": "a",
          "value": "Timber man",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Messi",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Coal driller",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Mine Managers",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 4,
      "answer": "Yuvi",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Who score fastest half Centuriry in T-20",
      "options": [
        {
          "option": "a",
          "value": "Yuvi",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "MSD",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "AB",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "e",
          "value": "No of the above",
          "color": "0xFFFFFFFF",
        }
      ],
    },
    {
      "id": 5,
      "answer": "Rohit Sharma",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Who score double century 3 times",
      "options": [
        {
          "option": "a",
          "value": "Sachin",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Rohit Sharma",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Ab DE",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Virat",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 6,
      "answer": "Ab",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Who score fastest Centuriy in ODI ?",
      "options": [
        {
          "option": "a",
          "value": "Ab",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Sehwag",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Afridi",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Ronaldo",
          "color": "0xFFFFFFFF",
        },
      ],
    },
  ];

  final _pageController = PageController(initialPage: 0);

  int questionINdex = 0;

  int userPercentage = 0;

  int wrongQ = 0;

  int ommitedQuestion = 0;

  int totalRight = 0;

  quizResult() {
    userPercentage = 0;
    wrongQ = 0;
    ommitedQuestion = 0;
    totalRight = 0;
    for (int i = 0; i < quizListData.length; i++) {
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 0) {
        ommitedQuestion++;
      }
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 1) {
        totalRight++;
      }
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 2) {
        wrongQ++;
      }
    }
    if (questionINdex == quizListData.length - 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(
              userPercentage: userPercentage,
              totalRight: totalRight,
              wrongQ: wrongQ,
              ommitedQuestion: ommitedQuestion,
            )),
      );
    } else {
      _pageController.nextPage(
          duration: Duration(microseconds: 5), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
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
              onTap: () {
                logOutUser();
              }),
        ],
      )),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Question :${questionINdex + 1}/${quizListData.length}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: quizListData.length,
                onPageChanged: (page) {
                  setState(
                    () {
                      questionINdex = page;
                    },
                  );
                },
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          quizListData[index]['title'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    ...quizListData[index]['options']
                        .map(
                          (data) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(
                                      int.parse(
                                        data['color'],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (quizListData[index]['is_answered'] ==
                                        0) {
                                      setState(() {
                                        if (data['value'] ==
                                            quizListData[index]['answer']) {
                                          data['color'] = "0xFF31CD63";
                                          quizListData[index][
                                              'is_answer_status_right_wrong_omitted'] = 1;
                                        } else {
                                          data['color'] = "0xFFFF0000";
                                          quizListData[index][
                                              'is_answer_status_right_wrong_omitted'] = 2;
                                        }
                                        quizListData[index]['is_answered'] = 1;
                                      });
                                    } else {}
                                  },
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              int.parse(
                                                data['color'],
                                              ),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              data['option'].toUpperCase(),
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          data['value'],
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ]);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
          quizResult();
          },
          label: Text(
              questionINdex == quizListData.length - 1 ? "Submit" : "Next")),
    );
  }

  Future<void> logOutUser() async {
    var sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool("Login", false);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  LoginScreen()),
    );

  }
}
