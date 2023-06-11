import 'package:flutter/material.dart';

class MyHomePage33 extends StatefulWidget {
  const MyHomePage33({super.key});

  @override
  State<MyHomePage33> createState() => _MyHomePage33State();
}

class _MyHomePage33State extends State<MyHomePage33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),),
      body: Center(
        child: InteractiveViewer(
          maxScale: 5,
          child: Image.asset('assets/images/three.png')),
      ),
    );
  }
}