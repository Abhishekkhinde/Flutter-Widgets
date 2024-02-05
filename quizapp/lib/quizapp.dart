import 'dart:collection';

import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int counter = 1;
  int index = 0;

  List question = [
    "what is your favorite player",
    "what is your favorite sport",
    "_______ Data type can be  used to represent true and false"
  ];

  List option1 = ["sachin", "option1", "option1"];
  List option2 = ["virat", "option2", "option2"];
  List option3 = ["rohit", "option3", "option3"];
  List option4 = ["ishan", "option4", "option4"];

  List? answer;

  Color truecolor() {
    if (question[index] == option1) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          selectionColor: Colors.blue,
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (counter < question.length) {
                counter++;
                index++;
              } else {
                counter = 1;
                index = 0;
              }
            },
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.double_arrow),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Question $counter / 10",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text("Quesion $counter: "),
          ),
          SizedBox(
            child: Text(question[index], style: const TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(option1[index]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(option2[index]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(option3[index]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(option4[index]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
 