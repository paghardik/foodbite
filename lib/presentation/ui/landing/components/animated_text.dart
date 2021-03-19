import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animationTranslate;
  Animation<double> _animationScale;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animationTranslate =
        Tween<double>(begin: 300.0, end: 0.0).animate(_controller);
    _animationScale = Tween<double>(begin: 10, end: 100).animate(_controller);
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _animationScale.value,
          child: Transform.translate(
            offset: Offset(0.0, _animationTranslate.value),
            child: child,
          ),
        );
      },
      child: Text(
        'Foodybite',
        style: TextStyle(
          fontSize: 60,
          color: const Color(0xff3e3f68),
          letterSpacing: 4.08,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
