import 'package:flutter/material.dart';
import 'package:task_message_ui/view/screen_ui/bottom.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBottom(),
    );
  }
}
