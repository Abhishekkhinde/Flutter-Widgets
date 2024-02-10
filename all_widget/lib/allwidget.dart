import 'package:flutter/material.dart';

class Allwidget extends StatefulWidget {
  const Allwidget({super.key});

  @override
  State<Allwidget> createState() => _AllwidgetState();
}

class _AllwidgetState extends State<Allwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 2, 2),
      appBar: AppBar(
        leading: const Icon(Icons.movie),
        backgroundColor: Color.fromRGBO(128, 19, 19, 0.776),
        title: const Text("Jio Cinema"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.subscript))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            IconButton.outlined(
                onPressed: () {},
                icon: const Text(
                  "For YOU",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton.outlined(
                onPressed: () {},
                icon: const Text(
                  "For YOU",
                  style: TextStyle(color: Colors.white),
                )),
            IconButton.outlined(
                onPressed: () {},
                icon: const Text(
                  "For YOU",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton.outlined(
                onPressed: () {},
                icon: const Text(
                  "For YOU",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton.outlined(
                onPressed: () {},
                icon: const Text(
                  "For YOU",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
