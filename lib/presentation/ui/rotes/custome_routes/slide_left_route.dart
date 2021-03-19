import 'package:flutter/cupertino.dart';

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;

  SlideLeftRoute({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(seconds: 3),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
                  .animate(animation),
              child: child,
            );
          },
        );
}
