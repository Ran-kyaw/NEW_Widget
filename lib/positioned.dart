import 'package:flutter/material.dart';

class MyHomePage28 extends StatefulWidget {
  const MyHomePage28({super.key});

  @override
  State<MyHomePage28> createState() => _MyHomePage28State();
}

class _MyHomePage28State extends State<MyHomePage28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 30,
              child: Image.asset('assets/images/three.png',
              width: 250,)
              ),

              Positioned(
              left: 60,
              top: 60,
              child: Image.asset('assets/images/three.png',
              width: 250,)
              ),

              Positioned(
              left: 90,
              top: 90,
              child: Image.asset('assets/images/three.png',
              width: 250,)
              ),
          ],
        ),
      ),
    );
  }
}