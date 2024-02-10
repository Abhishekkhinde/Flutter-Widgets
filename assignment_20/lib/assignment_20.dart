import 'package:flutter/material.dart';

class DisplayImage extends StatefulWidget {
  const DisplayImage({super.key});

  @override
  State<DisplayImage> createState() => _MyAppState();
}

class _MyAppState extends State<DisplayImage> {
  int count = 0;
  List<int> digitList = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Number List"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            digitList.add(count++);
          });
        }),
        body: ListView.builder(
            itemCount: digitList.length,
            itemBuilder: (context, index) {
              return Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "${digitList[index]}",
                    textAlign: TextAlign.center,
                  ));
            }),
      ),
    );
  }
}
