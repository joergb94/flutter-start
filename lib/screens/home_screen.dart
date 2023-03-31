import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
           centerTitle: true,
            title:const Text('Ray'),
            elevation: 10.0,
            ),
        body:Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
                Text('Please add your clicks '),
                Text('10'),
              ],
        ),
        ),
    );
    
  }
}
