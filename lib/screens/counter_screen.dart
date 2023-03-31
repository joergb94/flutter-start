import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() { counter++; setState(() {});}
  void decrease() { counter--; setState(() {});}
  void reset() { counter=0; setState(() {});}
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: GroupfloatingButtoms(
          addclick: increase,
          removeclick: decrease,
          resetclick: reset,
        ),
      
    );
    
  }
}

class GroupfloatingButtoms extends StatelessWidget {
  final Function addclick;
  final Function removeclick;
  final Function resetclick;

  const GroupfloatingButtoms({
    super.key,
    required this.addclick,
    required this.removeclick,
    required this.resetclick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(onPressed: () => removeclick()
         , child: const Icon(
              Icons.exposure_minus_1,
          )
        ),
         FloatingActionButton(onPressed: () => resetclick()
        , child: const Icon(
            Icons.exposure_sharp
          )
        ),
         FloatingActionButton(onPressed: () => addclick()
         , child: const Icon(
            Icons.exposure_plus_1,
          )
        ),
      ],
    );
  }
}
