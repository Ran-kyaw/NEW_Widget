import 'package:flutter/material.dart';

class MyHomePage13 extends StatefulWidget {
  const MyHomePage13({super.key});

  @override
  State<MyHomePage13> createState() => _MyHomePage13State();
}

class _MyHomePage13State extends State<MyHomePage13> {
  
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) =>[
                  PopupMenuItem(
                    child: Text(firstPage),
                    value: firstPage,
                    ),
                  PopupMenuItem(
                    child: Text(secondPage),
                    value: secondPage,
                    ),
                ],
                onSelected: (String newValue) {
                  setState(() {
                    title = newValue;
                  });
                },
                )
            ],
          ),
    );
  }
}