import 'package:flutter/material.dart';

class MyHomePage26 extends StatefulWidget {
  const MyHomePage26({super.key});

  @override
  State<MyHomePage26> createState() => _MyHomePage26State();
}

class _MyHomePage26State extends State<MyHomePage26> {
  @override
  Widget build(BuildContext context) {
    List <Widget> imagesList = [
          Image.asset('assets/images/hotel_two.png',
          height: 100,
          ),
           Image.asset('assets/images/hotel_three.png',
          height: 100,
          ),
           Image.asset('assets/images/hotel_five.png',
          height: 100,
          ),
    ];
    return Scaffold(
          appBar: AppBar(
            title: Text('Flutter Mapp'),
          ),
          body: Column(
            children: [
              Image.asset('assets/images/three.png'),

              // ...imagesList =>SpreadOperator
              Column(
                children: imagesList,
              )
            ],
          ),
    );
  }
}