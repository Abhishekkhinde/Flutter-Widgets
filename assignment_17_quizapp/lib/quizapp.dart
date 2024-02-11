import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizApp extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "who is the founder of microsoft",
      "options": ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "who is the founder of Apple",
      "options": ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "question": "who is the founder of Amazon",
      "options": ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "who is the founder of Tesla",
      "options": ["steve job", "jeff bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "question": "who is the founder of Google",
      "options": ["steve job", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
  ];
}
