import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  int counter = 0;
  plus() {
    counter++;
    print("Counter is $counter");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("StateFul Build called.....");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(
          '+',
          style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          plus();
        },
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Counter is $counter',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
