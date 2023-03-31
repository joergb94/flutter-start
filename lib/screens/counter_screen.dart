import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context){
    const fontsize30 =  TextStyle(fontSize:30);
    
    return Scaffold(
        appBar:AppBar(
           centerTitle: true,
            title:const Text('Counter Screen'),
            elevation: 10.0,
            ),
        body:Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                const Text('Please add your clicks', style:fontsize30),
                Text("$counter", style:fontsize30),
              ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(onPressed: () { 
          counter++;
          setState(() {
            
          });
         }, child: const Icon(
            Icons.add,
          )
        ),
    );
    
  }
}
