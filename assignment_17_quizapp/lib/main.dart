import 'package:flutter/material.dart';
import 'quizapp1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State<QuizApp> createState() => _QuizAppState();
// }

// class SingleModel {
//   final String? question;
//   final List? options;
//   final int? answerIndex;

//   const SingleModel({this.question, this.options, this.answerIndex});
// }

// class _QuizAppState extends State<QuizApp> {
//   List allQuestions = [
//     const SingleModel(
//       question: "who is founder of microsoft",
//       options: ["stev job", "jeff bezos", "bill gates", "elone musk"],
//       answerIndex: 2,
//     ),
//     const SingleModel(
//       question: "who is founder of Apple",
//       options: ["stev job", "jeff bezos", "bill gates", "elone musk"],
//       answerIndex: 0,
//     ),
//     const SingleModel(
//       question: "who is founder of Amazon",
//       options: ["stev job", "jeff bezos", "bill gates", "elone musk"],
//       answerIndex: 2,
//     ),
//     const SingleModel(
//       question: "who is founder of tesla",
//       options: ["stev job", "jeff bezos", "bill gates", "elone musk"],
//       answerIndex: 2,
//     ),
//     const SingleModel(
//       question: "who is founder of google",
//       options: ["stev job", "jeff bezos", "bill gates", "elone musk"],
//       answerIndex: 2,
//     ),
//   ];

//   bool questionScreen = true;
//   int questionIndex = 0;
//   int selectedIndex = -1;
//   int correctanscount = 0;

//   bool clicked = false;

//   Scaffold isQuestionScreen() {
//     if (questionScreen == true) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Quiz App",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w800,
//               color: Colors.red,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 25,
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//               const Text(
//                 "Questions: ",
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
//               ),
//               Text(
//                 "${questionIndex + 1} / ${allQuestions.length}",
//                 style: const TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               height: 50,
//             ),
//             SizedBox(
//               width: 380,
//               height: 50,
//               child: Text(
//                 allQuestions[questionIndex].question,
//                 style: const TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: 380,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (selectedIndex == -1) {
//                     selectedIndex = 0;
//                   }
//                 },
//                 child: Text(
//                   "A . ${allQuestions[questionIndex].options[0]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             SizedBox(
//               width: 380,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (selectedIndex == -1) {
//                     selectedIndex = 1;
//                   }
//                 },
//                 child: Text(
//                   "B . ${allQuestions[questionIndex].options[1]}",
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             SizedBox(
//               height: 50,
//               width: 380,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (selectedIndex == -1) {
//                     selectedIndex = 2;
//                   }
//                 },
//                 child: Text(
//                   "C . ${allQuestions[questionIndex].options[2]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             SizedBox(
//               width: 380,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (selectedIndex == -1) {
//                     selectedIndex = 2;
//                   }
//                 },
//                 child: Text(
//                   "D . ${allQuestions[questionIndex].options[3]}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
            
//           },
//           child: Icon(Icons.skip_next),
//         ),
//       );
//     } else {
//       return Scaffold();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isQuestionScreen();
//   }
// }
