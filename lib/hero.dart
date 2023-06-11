import 'package:flutter/material.dart';

class MyHomePage5 extends StatefulWidget {
  const MyHomePage5({super.key});

  @override
  State<MyHomePage5> createState() => _MyHomePage5State();
}

class _MyHomePage5State extends State<MyHomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>PageRoute())
          );
        },
        child: ClipRRect(
          
          child: Hero(
            tag: 'tag',
            child: Image.asset('assets/images/hotel_two.png',
            width: 200,),
          ),
        ),
      ),
    );
  }
}

class PageRoute extends StatelessWidget {
  const PageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Hero(
        tag: 'tag',
         child: Image.asset('assets/images/hotel_two.png')),
    );
  }
}