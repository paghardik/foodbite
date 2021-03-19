import 'package:flutter/material.dart';

class WelcomeBG extends StatelessWidget {
  const WelcomeBG({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            "assets/pngs/bg_gps.jpg",
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
