import 'package:flutter/material.dart';

class FourApp extends StatefulWidget {
  const FourApp({super.key});

  State<FourApp> createState() => _FourAppState();
}

class _FourAppState extends State<FourApp> {
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
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
