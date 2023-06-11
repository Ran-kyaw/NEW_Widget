import 'package:flutter/material.dart';

class MyHomePage31 extends StatefulWidget {
  const MyHomePage31({super.key});

  @override
  State<MyHomePage31> createState() => _MyHomePage31State();
}

class _MyHomePage31State extends State<MyHomePage31> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _counter += 1;
            });
          },

          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                _counter.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}