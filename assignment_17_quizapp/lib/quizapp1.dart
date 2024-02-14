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
  // List<Map> allQuestions = [
  //   {
  //     "question": "Who is founder of Microsoft?",
  //     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
  //     "answerIndex": 2,
  //   },
  //   {
  //     "question": "Who is founder of Apple?",
  //     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
  //     "answerIndex": 0,
  //   },
  //   {
  //     "question": "Who is founder of Amazon?",
  //     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
  //     "answerIndex": 1,
  //   },
  //   {
  //     "question": "Who is founder of Tesla?",
  //     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
  //     "answerIndex": 3,
  //   },
  //   {
  //     "question": "Who is founder of Google?",
  //     "options": ["Steve Jobs", "Larry Page", "Bill Gates", "Elon Musk"],
  //     "answerIndex": 1,
  //   },
  // ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedansind = -1;
  int correctanscount = 0;
  Color? givecolor(int buttonindex) {
    if (selectedansind != -1) {
      if (buttonindex == allQuestions[questionIndex].answerIndex) {
        return Colors.green;
      } else if (buttonindex == selectedansind) {
        return Colors.red;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  void validate() {
    if (selectedansind == allQuestions[questionIndex].answerIndex) {
      correctanscount += 1;
    }
    if (selectedansind != -1) {
      if ((questionIndex + 1) < allQuestions.length) {
        questionIndex++;

        selectedansind = -1;

        setState(() {});
      } else {
        questionScreen = false;
        setState(() {});
      }
    } else {
      return;
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
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
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
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  setState(() {
                    selectedansind = 0;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(0),
                  minimumSize: const Size(600, 50)),
              child: Text(
                "A.${allQuestions[questionIndex].options[0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  setState(() {
                    selectedansind = 1;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(1),
                  minimumSize: const Size(700, 50)),
              child: Text(
                "B.${allQuestions[questionIndex].options[1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  setState(() {
                    selectedansind = 2;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(2),
                  minimumSize: const Size(700, 50)),
              child: Text(
                "C.${allQuestions[questionIndex].options[2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  setState(() {
                    selectedansind = 3;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(3),
                  minimumSize: const Size(700, 50)),
              child: Text(
                "D.${allQuestions[questionIndex].options[3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validate();
          },
          child: const Icon(
            Icons.forward,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.greenAccent,
            ),
          ),
          backgroundColor: const Color.fromARGB(253, 56, 142, 240),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Image.network(
                "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
                height: 400,
                width: 350,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You have successfully completed quiz !",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Your score is as follows :",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                "$correctanscount /${allQuestions.length}",
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              ElevatedButton(
                  onPressed: () {
                    selectedansind = -1;
                    questionIndex = 0;
                    correctanscount = 0;
                    questionScreen = true;
                    //setState(() {});
                  },
                  child: const Text("RESTART")),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
