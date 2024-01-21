import 'package:flutter/material.dart';

class NineApp extends StatefulWidget {
  const NineApp({super.key});

  State<NineApp> createState() => _NineAppState();
}

class _NineAppState extends State<NineApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("roundBorder"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
