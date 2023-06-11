import 'package:flutter/material.dart';

class MyHomePage22 extends StatefulWidget {
  const MyHomePage22({super.key});

  @override
  State<MyHomePage22> createState() => _MyHomePage22State();
}

class _MyHomePage22State extends State<MyHomePage22> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Flutter Mapp'),

          /////////
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
             icon: Icon(Icons.arrow_back_ios_new)),
        ),
       
       body: Center(

       ),
       
      ),
       onWillPop: ()async{
        return false;
       }
       );
  }
}