// Assignment 25

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListviewDemo(),
    );
  }
}

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({super.key});

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  List<List<String>> imageList = [
    [
      "https://www.hindustantimes.com/ht-img/img/2024/02/14/550x309/PTI01-17-2024-000503A-0_1705551572700_1707926643625.jpg",
      "https://www.mumbaiindians.com/static-assets/waf-images/c4/25/75/4-3/592-444/H2HQofhaOx.png",
    ],
    [
      "https://im.rediff.com/cricket/2023/jan/17kohli1.jpg?w=670&h=900",
      "https://static.toiimg.com/thumb/msid-104379607,width-400,resizemode-4/104379607.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/371900/371912.jpg",
    ],
    [
      "https://im.rediff.com/cricket/2023/jan/17kohli1.jpg?w=670&h=900",
      "https://static.toiimg.com/thumb/msid-104379607,width-400,resizemode-4/104379607.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/371900/371912.jpg",
    ],
  ];

  List type = ["t20", "odi", "test"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Players List"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Text("Players");
        },
        itemCount: imageList.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              Text(
                type[index],
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                width: 200,
                child: ListView.builder(
                    itemCount: imageList[index].length,
                    itemBuilder: (context, index1) {
                      return Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          imageList[index][index1],
                        ),
                      );
                    }),
              )
            ],
          );
        },
      ),
    );
  }
}
