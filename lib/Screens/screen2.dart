import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back to Screen 1"),
      ),
      body: Center(
        child: InkWell(
          child: Text(
            'Screen 2 ',
          ),
        ),
      ),
    );
  }
}
