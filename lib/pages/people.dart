import 'package:flutter/material.dart';
class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Bienvenido a People", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20.0),),
    );
  }
}