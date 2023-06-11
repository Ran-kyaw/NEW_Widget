import 'package:flutter/material.dart';

import 'showDatePicker.dart';

class MyHomePage16 extends StatefulWidget {
  const MyHomePage16({super.key});

  @override
  State<MyHomePage16> createState() => _MyHomePage16State();
}

class _MyHomePage16State extends State<MyHomePage16> {
  int _currentIndex = 0 ;
  List<Widget> body = const[
      MyHomePage12(),
      Icon(Icons.menu),
      Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)),
            BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu)),
            BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person)),
        ]),
    );
  }
}