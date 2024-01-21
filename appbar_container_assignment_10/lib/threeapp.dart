import 'package:flutter/material.dart';

class ThreeApp extends StatefulWidget {
  const ThreeApp({super.key});

  State<ThreeApp> createState() => _ThreeAppState();
}

class _ThreeAppState extends State<ThreeApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Core2Web",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.deepPurple,
            fontSize: 30,
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
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.blue,
              )
            ]),
      ),
    );
  }
}
