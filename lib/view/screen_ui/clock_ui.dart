import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
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
        'Clock',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
      ),
    ));
  }
}
