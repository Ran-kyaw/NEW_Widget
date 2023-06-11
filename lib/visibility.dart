import 'package:flutter/material.dart';

class MyHomePage15 extends StatefulWidget {
  const MyHomePage15({super.key});

  @override
  State<MyHomePage15> createState() => _MyHomePage15State();
}

class _MyHomePage15State extends State<MyHomePage15> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        actions: [
          TextButton(
            onPressed: (){
              setState(() {
                _isVisible = ! _isVisible;
              });
            },
             child: Text('Switch',
             style: TextStyle(color: Colors.white),))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/home.png',height: 100,),
              Visibility(
                visible: _isVisible,
                child: Image.asset('assets/images/three.png')),
               Image.asset('assets/images/home.png',height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}