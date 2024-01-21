import 'package:flutter/material.dart';

class SixApp extends StatefulWidget {
  const SixApp({super.key});

  State<SixApp> createState() => _SixAppState();
}

class _SixAppState extends State<SixApp> {
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
      body: SingleChildScrollView(
        child: Center(
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
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
