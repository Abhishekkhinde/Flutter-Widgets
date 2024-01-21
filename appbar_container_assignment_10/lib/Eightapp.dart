import 'package:flutter/material.dart';

class EightApp extends StatefulWidget {
  const EightApp({super.key});

  State<EightApp> createState() => _EightAppState();
}

class _EightAppState extends State<EightApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Border",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.deepPurple,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.access_alarm_rounded)
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                //child: Image.network(
                //  "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943"),
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
