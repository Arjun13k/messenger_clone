import 'package:flutter/material.dart';
import 'package:task_message_ui/view/screen_ui/clock_ui.dart';
import 'package:task_message_ui/view/screen_ui/home_ui.dart';
import 'package:task_message_ui/view/widget/message_ui_chart.dart';
import 'package:task_message_ui/view/screen_ui/person_ui.dart';

class AppBottom extends StatefulWidget {
  const AppBottom({super.key});

  @override
  State<AppBottom> createState() => _AppBottomState();
}

class _AppBottomState extends State<AppBottom> {
  int indexValue = 0;
  final screen = [
    Home(),
    Clock(),
    MyMessage(),
    Person(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            indexValue = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          currentIndex: indexValue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.timer_sharp), label: "Clock"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
