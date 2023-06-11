import 'package:flutter/material.dart';

class MyHomePage36 extends StatefulWidget {
  const MyHomePage36({super.key});

  @override
  State<MyHomePage36> createState() => _MyHomePage36State();
}

class _MyHomePage36State extends State<MyHomePage36> {

  /////////////////
  String selectedText = '';
  final String _selectableText = 'This is a selectable text';
  final TextStyle _styleBlue = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue
  );

  final TextStyle _style = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    
  );

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
            Text(
              selectedText,
              style: _styleBlue,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellowAccent
              ),
              child: SelectableText(
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = _selectableText.substring(
                      selection.start,
                      selection.end
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}