import 'package:flutter/material.dart';

class MyHomePage4 extends StatefulWidget {
  const MyHomePage4({super.key});

  @override
  State<MyHomePage4> createState() => _MyHomePage4State();
}

class _MyHomePage4State extends State<MyHomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider(
              value: 1,
               onChanged: (double newValue){},
               ),

               SwitchListTile.adaptive(
                title: const Text('Switch List Tile'),
                value: true, 
                onChanged: (bool newValue){}
                ),

                Switch.adaptive(
                  value: true,
                   onChanged: (bool newValue){}
                   ),
               
               Icon(
                Icons.adaptive.share
               ),

               const CircularProgressIndicator.adaptive()

          ],
        ),
      ),
    );
  }
}