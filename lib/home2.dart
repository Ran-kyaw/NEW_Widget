import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
       child: Container(
        width: 300,
        height: 50,
        color: Colors.red,
        padding: const EdgeInsets.all(10.0),
        child: FittedBox(
          child: const Text('FLUTTER MAPP',
          style: TextStyle(fontSize: 100,
          color: Colors.white,
          fontWeight: FontWeight.bold),),
        ),
       ),
      ),
    ); 
  }
}