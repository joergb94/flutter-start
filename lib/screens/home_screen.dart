import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    const fontsize30 =  TextStyle(fontSize:30);
    int counter = 10;
    return Scaffold(
        appBar:AppBar(
           centerTitle: true,
            title:const Text('Counter'),
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
         }, child: const Icon(
            Icons.add,
          )
        ),
    );
    
  }
}
