import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleApp(),
    );
  }
}

class ToggleApp extends StatefulWidget {
  const ToggleApp({super.key});

  @override
  State<ToggleApp> createState() => _ToggleAppState();
}

class _ToggleAppState extends State<ToggleApp> {
  int counter1 = 0;
  int counter2 = 0;

  Color box1color() {
    if (counter1 == 1) {
      return Colors.red;
    } else if (counter1 == 2) {
      return Colors.green;
    } else if (counter1 == 3) {
      return Colors.black;
    } else {
      return Colors.yellow;
    }
  }

  Color box2color() {
    if (counter2 == 1) {
      return Colors.black;
    } else if (counter2 == 2) {
      return Colors.red;
    } else if (counter2 == 3) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box1color(),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      if (counter1 <= 3) {
                        counter1++;
                      } else {
                        counter1 = 1;
                      }
                    },
                  );
                },
                child: const Text("Button1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box2color(),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter2 <= 3) {
                      counter2++;
                    } else {
                      counter2 = 1;
                    }
                  });
                },
                child: const Text("Button2"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
