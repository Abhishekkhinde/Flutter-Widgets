import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignmentstate();
}

class _Assignmentstate extends State<Assignment2> {
  bool box1color = false;
  bool box2color = false;

  @override 

  Widget build (BuildContext context){

    return Scaffold(
      appBar:  AppBar(
        title: const Text("colorbox"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //box1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Column(children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box1color ? Colors.red : Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      box1color = true;
                    });
                  }, child: const Text("color box1"),
                  ),
              ],),
              const SizedBox(
                width:  20,
              ),

              // box2

              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color:  box2color? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      box2color = true;
                    });
                  }, child: const Text("color box2"),
                  ),
              ],
              ),
              const SizedBox(
                width:  20,
              ),
                ],
              ),
            ],
          ),
        
      );
  
  }
}
