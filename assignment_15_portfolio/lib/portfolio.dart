import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int _counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
        ),
        backgroundColor: Colors.amberAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        backgroundColor: Colors.blue,
        child: const Text("next"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              (_counter >= 0)
                  ? const Text(
                      "Name: ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  : const Text(""),
              (_counter >= 1)
                  ? const Text(
                      "Abhishek Khinde",
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                    )
                  : const Text(""),
            ],
          ),
          Center(
            child: (_counter >= 2)
                ? Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "assets/ak.png",
                    ),
                  )
                : Container(),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              (_counter >= 3)
                  ? const Text(
                      "Collage Name : ",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                  : const Text(""),
              (_counter >= 4)
                  ? const Text(
                      "Rmd Sinhgad",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                  : const Text(""),
            ],
          ),
          Center(
            child: (_counter >= 5)
                ? Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/logo.png"),
                  )
                : Container(),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              (_counter >= 6)
                  ? const Text(
                      "Dream Company : ",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                  : const Text(""),
              (_counter >= 6)
                  ? const Text(
                      "Google",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                  : const Text(""),
            ],
          ),
          Center(
            child: (_counter >= 7)
                ? Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/google.png"),
                  )
                : Container(),
          ),
        ],
      )),
    );
  }
}
