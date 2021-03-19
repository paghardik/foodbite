import 'dart:ui';

import 'package:flutter/material.dart';

class BluerBg extends StatelessWidget {
  const BluerBg({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.grey.withOpacity(0.3),
              child: Icon(
                Icons.person_outline_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
        /*       Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: ClipOval(
            child: Image.network("https://picsum.photos/200"),
          ),
        )*/
      ],
    );
  }
}
