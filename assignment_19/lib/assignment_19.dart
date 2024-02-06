import 'package:flutter/material.dart';

class DisplayImage extends StatefulWidget {
  const DisplayImage({super.key});

  @override
  State<DisplayImage> createState() => _MyAppState();
}

class _MyAppState extends State<DisplayImage> {
  List<String> ImageList = [
    "https://wallpapers.com/images/high/rohit-sharma-cricket-hand-signals-gde7t1b55k2mg4tp.webp",
    "https://wallpapers.com/images/high/rohit-sharma-cricket-hand-signals-gde7t1b55k2mg4tp.webp",
    "https://wallpapers.com/images/high/rohit-sharma-cricket-hand-signals-gde7t1b55k2mg4tp.webp"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Image List"),
        ),
        body: ListView.builder(
            itemCount: ImageList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                  ImageList[index],
                ),
              );
            }),
      ),
    );
  }
}
