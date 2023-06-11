import 'package:flutter/material.dart';

class MyHomePage18 extends StatefulWidget {
  const MyHomePage18({super.key});

  @override
  State<MyHomePage18> createState() => _MyHomePage18State();
}

class _MyHomePage18State extends State<MyHomePage18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
               builder: (BuildContext context){
                return SizedBox(
                height: 350,
                child: Center(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text('Close')),
                ),
                );
               }
               );
          },
           child: const Text('Modal Bottom Sheet')),
      ),
    );
  }
}