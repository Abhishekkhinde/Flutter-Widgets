import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomepage(title: 'Flutter demo home page'),
    );
  }
}
class MyHomepage extends StatefulWidget{
  const MyHomepage({super.key, required this.title});

  final String title;

  @override
  State <MyHomepage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomepage>{
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }


  @override 

  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title:  Text(widget.title),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            const Text(
              'you have pushed the button this many times',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
      tooltip: 'imcrement',
      child: const Icon(Icons.add),
      ),
    );
  }
}