import 'package:flutter/material.dart';

class TwoApp extends StatefulWidget {
  const TwoApp({super.key});

  State<TwoApp> createState() => _TwoAppState();
}

class _TwoAppState extends State<TwoApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "TwoApp",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.favorite_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.access_alarm_rounded)
        ],
      ),
    );
  }
}
