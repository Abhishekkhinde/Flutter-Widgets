import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int palindromCount = 0;
  int armstrongCount = 0;
  int strongCount = 0;

  List<int> pelindromlist = [1, 2, 145, 12321, 111, 153];

  List<int> armstronglist = [
    0,
    1,
    2,
    153,
    370,
    371,
    407,
    335,
    678565,
    12321,
    111,
    153
  ];

  List<int> stronglist = [1, 2, 145, 12321, 111, 153, 40585, 343, 54324];

  void setPalCount() {
    if (palindromCount != 0) {
      palindromCount = 0;
    } else {
      for (int i = 0; i < pelindromlist.length; i++) {
        int temp = pelindromlist[i];

        int val = 0;
        while (temp != 0) {
          val = val * 10 + temp % 10;
          temp = temp ~/ 10;
        }

        if (val == pelindromlist[i]) {
          palindromCount++;
        }
      }
    }
  }

  void setAmCount() {
    if (armstrongCount != 0) {
      armstrongCount = 0;
    } else {
      for (int i = 0; i < armstronglist.length; i++) {
        int digCount = 0;
        int temp = armstronglist[i];

        while (temp != 0) {
          temp = temp ~/ 10;
          digCount++;
        }

        temp = armstronglist[i];

        int am = 0;
        while (temp != 0) {
          int dig = temp % 10;
          int pow = 1;

          for (int i = 1; i <= digCount; i++) {
            pow = pow * dig;
          }

          am = am + pow;
          temp = temp ~/ 10;
        }

        if (am == armstronglist[i]) {
          armstrongCount++;
        }
      }
    }
  }

  void setStrongCount() {
    if (strongCount != 0) {
      strongCount = 0;
    } else {
      for (int i = 0; i < stronglist.length; i++) {
        int temp = stronglist[i];

        int strong = 0;

        while (temp != 0) {
          int rem = temp % 10;
          int fact = 1;

          for (int i = 1; i <= rem; i++) {
            fact = fact * i;
          }

          strong = strong + fact;
          temp = temp ~/ 10;
        }

        if (strong == stronglist[i]) {
          strongCount++;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 15,
              width: 10,
              child: Text("$palindromCount"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  setPalCount();
                });
              },
              child: const Text("Palindrome Count"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 15,
              width: 10,
              child: Text("$armstrongCount"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  setAmCount();
                });
              },
              child: const Text("Amstrong Count"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 15,
              width: 10,
              child: Text("$strongCount"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  setStrongCount();
                });
              },
              child: const Text("Strong Count"),
            ),
          ],
        ),
      ),
    );
  }
}
