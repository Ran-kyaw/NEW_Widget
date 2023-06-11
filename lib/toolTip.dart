import 'package:flutter/material.dart';

class MyHomePage25 extends StatefulWidget {
  const MyHomePage25({super.key});

  @override
  State<MyHomePage25> createState() => _MyHomePage25State();
}

class _MyHomePage25State extends State<MyHomePage25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Tooltip(
          message: "This is image",
          // waitDuration: ,
          child: Image.asset('assets/images/hotel_one.png'),
        ),
      ),
    );
  }
}