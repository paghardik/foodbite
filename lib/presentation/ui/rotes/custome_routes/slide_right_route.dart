import 'package:flutter/cupertino.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
                .animate(animation),
            child: child,
          ),
        );
}
