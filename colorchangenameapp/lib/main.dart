import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleApp();
      );
  }
}


class ToggleApp extends StatefulWidget{

  const ToggleApp ({super.key});

  @override

  State<ToggleApp> createState() => _ToggleAppState(); 
}

class _ToggleAppState extends State <ToggleApp>{


  int _counter1 = 0;
  @override
}