import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignmentstate();
}

class _Assignmentstate extends State<Assignment3> {
// variable

  int? selectIndex = 0;

  // list image
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/05/02/09/29/auto-3368094_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/12/28/23/41/car-3046424_960_720.jpg"
  ];

  void showNextImage() {
    setState(() {
      selectIndex = selectIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("display images"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageList[selectIndex!],
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: showNextImage,
            child: const Text(
              "next",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              child: const Text(
                "Reset",
              )),
        ],
      )),
    );
  }
}
