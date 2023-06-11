import 'package:flutter/material.dart';

class MyHomePage19 extends StatefulWidget {
  const MyHomePage19({super.key});

  @override
  State<MyHomePage19> createState() => _MyHomePage19State();
}

class _MyHomePage19State extends State<MyHomePage19> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        actions: [
          TextButton(
            onPressed: (){
              setState(() {
                _bool = !_bool;
              });
            }, 
            child: const Text('Switch',
            style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset('assets/images/one.png'), 
          secondChild: Image.asset('assets/images/hotel_two.png'), crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
           duration: const Duration(seconds: 1)),
      ),
    );
  }
}