import 'package:flutter/material.dart';

class MyHomePage35 extends StatefulWidget {
  const MyHomePage35({super.key});

  @override
  State<MyHomePage35> createState() => _MyHomePage35State();
}

class _MyHomePage35State extends State<MyHomePage35> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text('Checkbox List Tile'),
          value: _isChecked,
           onChanged: (bool? newValue){
            setState(() {
              _isChecked = newValue;
            }
            );
           },
           
           activeColor: Colors.greenAccent,
           checkColor: Colors.white,
           controlAffinity: ListTileControlAffinity.leading,
           tileColor: Colors.black12,
           tristate: true,
           subtitle: Text('Subtitle'),
           )
           ),
      );
    
  }
}