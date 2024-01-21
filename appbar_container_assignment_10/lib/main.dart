import 'package:appbar_container_assignment_10/fourapp.dart';
import 'package:appbar_container_assignment_10/nineapp.dart';
import 'package:flutter/material.dart';
import 'oneapp.dart';
import 'twoapp.dart';
import 'threeapp.dart';
import 'fourapp.dart';
import 'fiveapp.dart';
import 'sixapp.dart';
import 'Sevenapp.dart';
import 'Eightapp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EightApp(),
    );
  }
}
