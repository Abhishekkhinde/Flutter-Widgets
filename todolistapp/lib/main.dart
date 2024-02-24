import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: Colors.white,
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle:
                const TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 112,
            width: 330,
            decoration: BoxDecoration(color: Colors.amber),
          )
        ],
      ),
    );
  }
}
