import 'package:flutter/material.dart';

class MyHomePage11 extends StatefulWidget {
  const MyHomePage11({super.key});

  @override
  State<MyHomePage11> createState() => _MyHomePage11State();
}

class _MyHomePage11State extends State<MyHomePage11> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()}:${time!.minute.toString()}',
          style: const TextStyle(fontSize: 60),
        ),
      ),
      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.access_time_outlined,
        ),
        onPressed: ()async{
         TimeOfDay? newTime = await showTimePicker(
          context: context,
           initialTime: time!);

           if (newTime != null){
            setState(() {
              time = newTime;
            });
           }
        }),
    );
  }
}