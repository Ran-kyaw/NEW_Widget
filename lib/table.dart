import 'package:flutter/material.dart';

class MyHomePage30 extends StatefulWidget {
const MyHomePage30({super.key});

  @override
  State<MyHomePage30> createState() => _MyHomePage30State();
}

class _MyHomePage30State extends State<MyHomePage30> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: <Widget>[
        Padding(
          padding:EdgeInsets.all(10.0),
          child: Text('Cell 1'),
        ),

        Padding(
          padding:EdgeInsets.all(10.0),
          child: Text('Cell 2'),
          ),

          Padding(
          padding:EdgeInsets.all(10.0),
          child: Text('Cell 3'),
          ),
      ]
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
           child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: FixedColumnWidth(120.0),
            children: <TableRow> [
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
            ],
           ),
      ),
    );
  }
}