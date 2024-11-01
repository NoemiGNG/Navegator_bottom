import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Bienvenido a Settings", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20.0)),
    );
  }
}