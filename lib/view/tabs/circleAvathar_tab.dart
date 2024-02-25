import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key, required this.avathar});
  final String avathar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avathar),
            radius: 30,
          ),
          Positioned(
              top: 5,
              right: 3,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ))
        ],
      ),
    );
  }
}
