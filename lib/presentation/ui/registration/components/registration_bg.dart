import 'package:flutter/material.dart';

class RegistrationBG extends StatelessWidget {
  const RegistrationBG({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.clip,
      fit: StackFit.expand,
      children: [
        Positioned(
          right: -100,
          left: -50,
          child: Image.asset(
            "assets/pngs/bg_register.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.black.withOpacity(0.2)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
      ],
    );
  }
}
