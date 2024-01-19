import 'package:flutter/material.dart';
import 'Netflix.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Netflix(),
    );
  }
}
