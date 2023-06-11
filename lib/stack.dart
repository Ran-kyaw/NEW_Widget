import 'package:flutter/material.dart';

class MyHomePage27 extends StatefulWidget {
  const MyHomePage27({super.key});

  @override
  State<MyHomePage27> createState() => _MyHomePage27State();
}

class _MyHomePage27State extends State<MyHomePage27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/eight.png'),
            ),
            Center(
              child: Image.asset('assets/images/three.png',
              height: 100),
            ),
          ],
        ),
      ),
    );
  }
}