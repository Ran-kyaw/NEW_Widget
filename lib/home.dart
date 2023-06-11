import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
      ),
      body: Center(
        child: Stepper(steps: const [
          Step(
          title: Text('Step 1'),
           content: Text('Information fot step 1')),
            Step(
          title: Text('Step 2'),
           content: Text('Information fot step 2')),
            Step(
          title: Text('Step 3'),
           content: Text('Information fot step 3')),
           ],

           //Main 
           onStepTapped: (int newIndex){
            setState(() {
              _currentStep = newIndex;
            });
           },
           ///current step
           currentStep: _currentStep,
           onStepContinue: (){
            if (_currentStep != 2){
                setState(() {
              
              _currentStep += 1;
            });
            }
            },
          
           ////onstepCancle
            onStepCancel: (){
              if (_currentStep != 0){
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
           ),
      ),
    );
  }
}
