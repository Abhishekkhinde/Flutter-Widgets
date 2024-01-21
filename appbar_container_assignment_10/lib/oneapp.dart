import 'package:flutter/material.dart';

class OneApp extends StatefulWidget {
  const OneApp({super.key});

  State<OneApp> createState() => _OneAppState();
}

class _OneAppState extends State<OneApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "OneApp",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_rounded),
          Icon(Icons.access_alarm_rounded)
        ],
      ),
    );
  }
}
