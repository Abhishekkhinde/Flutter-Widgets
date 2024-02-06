import 'package:flutter/material.dart';

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAppState();
}

class _MyAppState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("data"),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                  "https://wallpapers.com/images/high/rohit-sharma-cricket-hand-signals-gde7t1b55k2mg4tp.webp"),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Image.network(
                  "https://wallpapers.com/images/high/rohit-sharma-cricket-hand-signals-gde7t1b55k2mg4tp.webp"),
            )
          ],
        ),
      ),
    );
  }
}
