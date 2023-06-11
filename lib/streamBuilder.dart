import 'package:flutter/material.dart';

class MyHomePage6 extends StatefulWidget {
  const MyHomePage6({super.key});

  @override
  State<MyHomePage6> createState() => _MyHomePage6State();
}

//FAKE FIREBASE STREAM
Stream<int> generateStream = ( () async*{
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;

  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
   
  //  throw 'An error occured';

  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
   
}
)();

class _MyHomePage6State extends State<MyHomePage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
           child: StreamBuilder(
            stream: generateStream,
            initialData: 0,
            builder: (context, snapshop){

              if(snapshop.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator.adaptive();
              }

              if (snapshop.hasError){
                return const Text('Error');
              } else {
                return Text(
                  snapshop.data.toString(),
                  style: const TextStyle(fontSize: 40),
                );
              }
            }
            ),
      ),
    );
  }
}