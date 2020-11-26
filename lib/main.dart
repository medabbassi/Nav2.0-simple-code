import 'package:NewNav2/Screens/screen1.dart';
import 'package:NewNav2/Screens/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStacked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter New Nav ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('unique '),
            child: Screen1(
              onTap: (value) {
                isStacked = value;
                setState(() {});
              },
            ),
          ),
          if (isStacked == true)
            MaterialPage(
              key: ValueKey('undefined'),
              child: Screen2(),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) return false;
          setState(() => isStacked = false);
          return true;
        },
      ),
    );
  }
}
