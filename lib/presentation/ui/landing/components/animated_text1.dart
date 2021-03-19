import 'package:flutter/material.dart';

class AnimatedText1 extends StatefulWidget {
  @override
  _AnimatedText1State createState() => _AnimatedText1State();
}

class _AnimatedText1State extends State<AnimatedText1> {
  bool animationCompeted = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        animationCompeted = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
        child: Text("Foodybite"),
        style: animationCompeted
            ? TextStyle(
                fontSize: 60,
                color: const Color(0xff3e3f68),
                letterSpacing: 4.08,
                fontWeight: FontWeight.bold,
              )
            : TextStyle(
                fontSize: 80,
                color: Colors.transparent,
                letterSpacing: 4.08,
                fontWeight: FontWeight.bold,
              ),
        duration: Duration(seconds: 1));
  }
}
