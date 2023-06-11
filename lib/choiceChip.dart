import 'package:flutter/material.dart';

class MyHomePage7 extends StatefulWidget {

  @override
  State<MyHomePage7> createState() => _MyHomePage7State();
}

class _MyHomePage7State extends State<MyHomePage7> {

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: Image.asset('assets/images/home.png'),
          label: Text('Choice Chip'),
          selected: _isSelected,
          onSelected: (newBoolValue){
           setState(() {
             _isSelected = newBoolValue;
           });
          }
          ),
      ),
    );
  }
}