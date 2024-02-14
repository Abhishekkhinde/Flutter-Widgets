import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class SingleQuestionmodel {
  final String? question;
  final List? options;
  final int? answerIndex;

  const SingleQuestionmodel({this.question, this.answerIndex, this.options});
}

class _QuizAppState extends State<QuizApp> {
  List allQuestions = [
    const SingleQuestionmodel(
      question: "who is the founder of microsoft",
      options: ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 2,
    ),
    const SingleQuestionmodel(
      question: "who is the founder of Apple",
      options: ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      answerIndex: 0,
    ),
    const SingleQuestionmodel(
        question: "who is the founder of Amazon",
        options: ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
        answerIndex: 1),
    const SingleQuestionmodel(
        question: "who is the founder of Tesla",
        options: ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
        answerIndex: 3),
    const SingleQuestionmodel(
        question: "who is the founder of Google",
        options: ["steve job", "Lary Page", "Bill Gates", "Elon Musk"],
        answerIndex: 2)
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int ansindex = -1;

  Color? checkcolor(int ansindex) {
    if (ansindex != -1) {
      if (ansindex == allQuestions[questionIndex]["answerIndex"]) {
        return Colors.green;
      } else if (allQuestions[questionIndex] == ansindex) {
        return Colors.red;
      }
    } else {
      return null;
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                      fontSize: 25, 
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: checkcolor(0),
              ),
              onPressed: () {
                if (ansindex == -1) {
                  setState(() {
                    ansindex = 0;
                  });
                }
              },
              child: Text(
                "A . ${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: checkcolor(0),
              ),
              onPressed: () {
                if (ansindex == -1) {
                  setState(() {
                    ansindex == 1;
                  });
                }
              },
              child: Text(
                "B. ${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: checkcolor(0),
              ),
              onPressed: () {
                if (ansindex == -1) {
                  setState(() {
                    ansindex = 2;
                  });
                }
              },
              child: Text(
                "c. ${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: checkcolor(0),
              ),
              onPressed: () {
                if (ansindex == -1) {
                  setState(() {
                    ansindex = 3;
                  });
                }
              },
              child: Text(
                "${allQuestions[questionIndex]["options"][3]},",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
