import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main(){
  runApp(const Counter());
}

class Counter extends StatelessWidget{
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
   
  }


}