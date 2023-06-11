import 'package:flutter/material.dart';

class MyHomePage23 extends StatefulWidget {
  const MyHomePage23({super.key});

  @override
  State<MyHomePage23> createState() => _MyHomePage23State();
}

///////////=>>>>>>>
Future <String> getData() async{
  await Future.delayed(const Duration(seconds: 1));
  // throw 'ERROR';
  return 'It Works';
}


class _MyHomePage23State extends State<MyHomePage23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot){
            // if (snapshot.connectionState == ConnectionState.waiting){
            //  return const CircularProgressIndicator();
            // }

            if (snapshot.hasError){
               return Text(snapshot.error.toString());
            }else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data.toString()),

                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        
                      });
                    },
                     child: const Text('Refresh'))
                ],
              );
            }
          }
          ),
      ),
    );
  }
}