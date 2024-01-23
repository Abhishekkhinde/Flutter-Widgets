import 'package:flutter/material.dart';

class TenApp extends StatelessWidget {
  const TenApp({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TenApp"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
        ),
      ),
    );
  }
}
