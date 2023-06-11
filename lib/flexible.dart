import 'package:flutter/material.dart';

class MyHomePage21 extends StatefulWidget {
  const MyHomePage21({super.key});

  @override
  State<MyHomePage21> createState() => _MyHomePage21State();
}

class _MyHomePage21State extends State<MyHomePage21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 4, 
              fit: FlexFit.tight, ///equal height
              child: Container(
                height: 50,
                color: Colors.blue,
              )
              ),
              Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 150,
                color: Colors.orange,
              )
              ),
              Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 150,
                color: Colors.red,
              )
              )
          ],
        ),
      ),
    );
  }
}