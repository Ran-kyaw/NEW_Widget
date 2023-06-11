import 'package:flutter/material.dart';

class MyHomePage29 extends StatefulWidget {
  const MyHomePage29({super.key});

  @override
  State<MyHomePage29> createState() => _MyHomePage29State();
}

class _MyHomePage29State extends State<MyHomePage29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                       actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          }, 
                          child: const Text('Close'))
                       ],
                       title: Text('Flutter Mapp'),
                       contentPadding: const EdgeInsets.all(20.0),
                       content: Text('This is the Alert Dialog'),
                )
              );
          },
           child: Text('Show Alert Dialog')),
      ),
    );
  }
}