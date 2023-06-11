import 'package:flutter/material.dart';

class MyHomePage8 extends StatefulWidget {
  const MyHomePage8({super.key});

  @override
  State<MyHomePage8> createState() => _MyHomePage8State();
}

class _MyHomePage8State extends State<MyHomePage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            title: Text('Flutter'),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Mapp'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text('SLIVER',
                style: TextStyle(fontSize: 600),)
              ]
            )
            )
        ],
      ),
    );
  }
}