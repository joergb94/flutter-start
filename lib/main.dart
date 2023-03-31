import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main(){
  runApp(const Counter());
}

class Counter extends StatelessWidget{
  const Counter({super.key});


/// The build function returns a MaterialApp widget that has a debugShowCheckedModeBanner set to false,
/// and a home property set to a HomeScreen widget
/// 
/// Args:
///   context (BuildContext): The context of the widget.
/// 
/// Returns:
///   A MaterialApp widget.
/// 
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
   
  }


}