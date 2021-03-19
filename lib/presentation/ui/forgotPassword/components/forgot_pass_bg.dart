import 'package:flutter/material.dart';

class ForgotPasswordBG extends StatelessWidget {
  const ForgotPasswordBG({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.clip,
      fit: StackFit.expand,
      children: [
        Positioned(
          right: -10,
          left: -150,
          child: Image.asset(
            "assets/pngs/bg_login.png",
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
