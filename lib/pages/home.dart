import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Bienvenido a Home", style: TextStyle(color: const Color.fromARGB(255, 19, 51, 126), fontWeight: FontWeight.bold, fontSize: 20.0), textAlign: TextAlign.center,),
    );
  }
}