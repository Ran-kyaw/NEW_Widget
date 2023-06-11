import 'package:flutter/material.dart';

class MyHomePage12 extends StatefulWidget {
  const MyHomePage12({super.key});

  @override
  State<MyHomePage12> createState() => _MyHomePage12State();
}

class _MyHomePage12State extends State<MyHomePage12> {
  DateTime _dateTime = DateTime(2023);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
            style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: ()async{
                DateTime? _newDate = await showDatePicker(
                  context: context, initialDate: _dateTime, firstDate: DateTime(1800), lastDate: DateTime(3000));

                  //////NewDate
                  if (_newDate != null){
                    setState(() {
                      _dateTime = _newDate;
                    });
                  }
              },
               child: Text('Get Date'))
          ],
        ),
      ),
    );
  }
}