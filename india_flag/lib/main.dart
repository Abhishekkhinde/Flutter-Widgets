import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 410,
                  height: 287,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
                Container(
                  width: 410,
                  height: 287,
                  child: Image.asset("assets/Ashoka_Chakra.png"),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                ),
                Container(
                  width: 410,
                  height: 287,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
