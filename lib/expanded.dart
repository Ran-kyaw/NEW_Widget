import 'package:flutter/material.dart';

class MyHomePage20 extends StatefulWidget {
  const MyHomePage20({super.key});

  @override
  State<MyHomePage20> createState() => _MyHomePage20State();
}

class _MyHomePage20State extends State<MyHomePage20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 200,
              )
              ),

              Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                height: 200,
              )
              ),
             
             Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                height: 200,
              )
              ),
          ],
        ),
      ),
    );
  }
}