import 'package:flutter/material.dart';

class FiveApp extends StatefulWidget {
  const FiveApp({super.key});

  State<FiveApp> createState() => _FiveAppState();
}

class _FiveAppState extends State<FiveApp> {
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/DSC_1508.JPG"),
              width: 150,
              height: 150,
            ),
            Container(
              child: Image.asset("assets/DSC_1510.JPG"),
              width: 150,
              height: 150,
            ),
            Container(
              child: Image.asset("assets/DSC_0106.JPG"),
              width: 150,
              height: 150,
            ),
          ]),
    );
  }
}
