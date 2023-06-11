import 'package:flutter/material.dart';

class MyHomePage17 extends StatefulWidget {
  const MyHomePage17({super.key});

  @override
  State<MyHomePage17> createState() => _MyHomePage17State();
}

class _MyHomePage17State extends State<MyHomePage17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('Page 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60
              ),),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60
              ),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60
              ),),
            ),
          )
        ],
      ),
    );
  }
}