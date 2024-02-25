import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: Icon(
        Icons.keyboard_arrow_left,
        size: 40,
      ),
      centerTitle: true,
      title: Text(
        'Profile',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
      ),
    ));
  }
}
