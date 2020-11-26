import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Function(bool) onTap;

  Screen1({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator 2.0"),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          onPressed: () {
            onTap(true);
          },
          child: Text('click me'),
        ),
        /*child: InkWell(
          onTap: () {
            onTap(true);
          },
          child: Text(
            'Screen 1 \n tap on text to maove to screen2',
          ),
        ),*/
      ),
    );
  }
}
