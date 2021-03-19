import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotateImage extends StatefulWidget {
  @override
  _RotateImageState createState() => _RotateImageState();
}

class _RotateImageState extends State<RotateImage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  Animation<double> _animationScale;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 0.3).animate(_controller);
    _animationScale = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -100,
      left: -100,
      child: AnimatedBuilder(
        child: Image.asset(
          "assets/pngs/bg_landing.jpg",
        ),
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _animationScale.value,
            child: Transform.rotate(
              angle: _animation.value,
              child: child,
            ),
          );
        },
      ),
    );
  }
}
