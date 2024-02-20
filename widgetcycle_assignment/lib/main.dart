import "package:flutter/material.dart";

void main() {
  runApp(const WidgetTree());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: WidgetTree(),
//     );
//   }
// }

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeDemo();
}

class _WidgetTreeDemo extends State<WidgetTree> {
  int _num = 0;

  @override
  void initState() {
    super.initState();
    print("in Init State");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print("In DidChange Dependencied");
  }

  @override
  Widget build(BuildContext context) {
    print("in build");
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "number : $_num",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          onUserInterface();
        }),
      ),
    );
    print("In build");
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("in update widget");
  }

  @override
  void onUserInterface() {
    setState(() {
      _num++;
      print("in set STate");
    });
  }

  @override
  void deactivate() {
    super.deactivate();
    print("print In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("in despose");
  }
}
