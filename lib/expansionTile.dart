import 'package:flutter/material.dart';

class MyHomePage10 extends StatefulWidget {
  const MyHomePage10({super.key});

  @override
  State<MyHomePage10> createState() => _MyHomePage10State();
}

class _MyHomePage10State extends State<MyHomePage10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: ExpansionTile(
        title: Text('See More'),
        leading: Icon(Icons.info),
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('Second'),
          ),
          ListTile(
            title: Text('Third'),
          )
        ],
        ),
    );
  }
}