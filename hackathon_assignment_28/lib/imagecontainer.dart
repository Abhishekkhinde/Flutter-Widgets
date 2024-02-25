import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State createState() => _ImageContainerState();
}

class _ImageContainerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Container"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromRGBO(
              250,
              232,
              232,
              1,
            ),
            border: Border.all(
              width: 2,
              color: const Color.fromRGBO(
                0,
                0,
                0,
                1,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.red, blurRadius: 20, offset: Offset(10, 10)),
            ],
          ),
          child: Image.network(
            "https://img.icons8.com/?size=100&id=53386&format=png",
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
