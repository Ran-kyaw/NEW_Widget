import 'package:flutter/material.dart';

class MyHomePage24 extends StatefulWidget {
  const MyHomePage24({super.key});

  @override
  State<MyHomePage24> createState() => _MyHomePage24State();
}

class _MyHomePage24State extends State<MyHomePage24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 1,
          interval: 200,
          subdivisions: 8,
        ),
      ),
    );
  }
}