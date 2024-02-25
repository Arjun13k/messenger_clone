import 'package:flutter/material.dart';

class AlignChat extends StatelessWidget {
  const AlignChat({super.key, required this.isSender, required this.msg});
  final String msg;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(color: isSender ? Colors.blue : Colors.white),
        child: Text(
          msg,
          style: TextStyle(color: isSender ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
