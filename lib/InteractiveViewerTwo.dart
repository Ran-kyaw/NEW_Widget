import 'package:flutter/material.dart';

class MyHomePage34 extends StatefulWidget {
  const MyHomePage34({super.key});

  @override
  State<MyHomePage34> createState() => _MyHomePage34State();
}

class _MyHomePage34State extends State<MyHomePage34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Mapp'),
          ),
        )
      ),
    );
  }
}