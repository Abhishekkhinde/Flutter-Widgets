import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "who is the founder of microsoft",
      "options": ["Steve Job", "Jeff Bezos", "Bill Gates", "Elone Musk"],
      "answerIndex": 2,
    },
    {
      "question": "who is the founder of microsoft",
      "options": ["Steve Job", "Jeff Bezos", "Bill Gates", "Elone Musk"],
      "answerIndex": 0,
    },
    {
      "question": "who is the founder of Amazon",
      "options": ["Steve Job", "Jeff Bezos", "Bill Gates", "Elone Musk"],
      "answerIndex": 1,
    },
    {
      "question": "who is the founder of Tesla",
      "options": ["Steve Job", "Jeff Bezos", "Bill Gates", "Elone Musk"],
      "answerIndex": 3,
    },
    {
      "question": "who is the founder of Google",
      "options": ["Steve Job", "Lary Page", "Bill Gates", "Elone Musk"],
      "answerIndex": 1,
    }
  ];

  bool questionScreen = true;
  int questionIndex = 0;

  Scaffold questionScreen{
    if(questionScreen == true){
      return Scaffold(
        appBar: AppBar(
          title: const Text("QuizApp",
          style: TextStyle(
            fontSize: 30,
            fontWeight:  FontWeight.w800,
          ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Quistion :",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),),
                 Text("${questionIndex+1} / ${allQuestions.length}")
              ],
            )
          ],
        ),
      );
    }
    else{
      return Scaffold();
    }
  }
@override
Widget build(BuildContext context){
  return questionScreen();
}

}
