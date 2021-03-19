import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex: 3, items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        label: "Icon",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.access_alarm_rounded,
          color: Colors.grey,
        ),
        label: "Icon",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        label: "Icon",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        label: "Icon",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        label: "Icon",
      ),
    ]);
  }
}
