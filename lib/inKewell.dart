import 'package:flutter/material.dart';

class MyHomePage32 extends StatefulWidget {
  const MyHomePage32({super.key});

  @override
  State<MyHomePage32> createState() => _MyHomePage32State();
}

class _MyHomePage32State extends State<MyHomePage32> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Mapp'),
        ),
        body: Center(
          child: InkWell(

            //OnDoubleTap
            onDoubleTap: (){
              setState(() {
                boxColor =Colors.red;
              });
            },

            //OnLongPress
            onLongPress:(){
              setState(() {
                boxColor = Colors.yellow;
              });
            } ,

            //OnTap
            onTap: () {
              setState(() {
                boxColor = Colors.blue;
              });
            },

            child: Ink(
              height: 200,
              width: 200,
              color: boxColor,
              child:const Center(
                child: FlutterLogo(
                  size: 150,
                ),
              ),
            ),
          ),
        ),
    );
  }
}