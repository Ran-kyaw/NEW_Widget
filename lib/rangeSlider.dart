import 'package:flutter/material.dart';

class MyHomePage14 extends StatefulWidget {
  const MyHomePage14({super.key});

  @override
  State<MyHomePage14> createState() => _MyHomePage14State();
}

class _MyHomePage14State extends State<MyHomePage14> {
  RangeValues values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(
      values.start.toString(),
       values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          divisions: 8,
          labels: labels,
           onChanged: (newValues){
            setState(() {
              values = newValues;
            });
           }
           ),
      ),
    );
  }
}