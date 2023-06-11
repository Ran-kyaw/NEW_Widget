import 'package:flutter/material.dart';

class MyHomePage9 extends StatefulWidget {
  const MyHomePage9({super.key});

  @override
  State<MyHomePage9> createState() => _MyHomePage9State();
}

class _MyHomePage9State extends State<MyHomePage9> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('assets/images/home.png',
      height: 100,
      width: 100,
      fit: BoxFit.cover,),
      );
      List<Widget> _list = [_image,_image,_image,_image,_image];
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}