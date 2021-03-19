import 'package:flutter/cupertino.dart';

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRoute({this.enterPage, this.exitPage})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => enterPage,
          transitionDuration: Duration(seconds: 3),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Stack(
              children: [
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset.zero, end: Offset(-1.0, 0.0))
                          .animate(animation),
                  child: exitPage,
                ),
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
                          .animate(animation),
                  child: enterPage,
                )
              ],
            );
          },
        );
}
