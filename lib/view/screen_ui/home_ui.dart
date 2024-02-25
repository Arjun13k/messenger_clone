import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        'Home',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
      ),
    ));
  }
}
