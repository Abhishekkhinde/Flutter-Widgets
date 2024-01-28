import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indian Flag',
      home: IndianFlag(),
    );
  }
}

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int _counter = -1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _counter++;
        }),
      ),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (_counter >= 0)
                  ? Container(
                      height: 500,
                      width: 20,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  : Container(),
              Column(
                children: [
                  (_counter >= 1)
                      ? Container(
                          height: 50,
                          width: 250,
                          color: Colors.orange,
                        )
                      : Container(),
                  (_counter >= 2)
                      ? Container(
                          height: 50,
                          width: 250,
                          color: Colors.white,
                          child: (_counter >= 3)
                              ? Container(
                                  height: 50,
                                  width: 250,
                                  child: Image.asset("assets/Ashoka.png"),
                                )
                              : Container())
                      : Container(),
                  (_counter >= 4)
                      ? Container(
                          height: 50,
                          width: 250,
                          color: Colors.green,
                        )
                      : Container()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
