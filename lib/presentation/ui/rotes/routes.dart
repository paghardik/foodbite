import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodbite/presentation/ui/landing/landing_screen.dart';
import 'package:foodbite/presentation/ui/login/login_screen.dart';
import 'package:foodbite/presentation/ui/rotes/custome_routes/enter_exit_route.dart';
import 'package:foodbite/presentation/ui/rotes/custome_routes/slide_left_route.dart';
import 'package:foodbite/presentation/ui/rotes/custome_routes/slide_right_route.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoutesMaterial(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingScreen());
        break;
      case '/login_screen':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
    }
  }

  //If you want to have a slide transition like iOS you use CupertinoPageRoute
  static Route<dynamic> generateRoutesCupertino(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => LandingScreen());
        break;
      case '/login_screen':
        return CupertinoPageRoute(builder: (_) => LoginScreen());
        break;
    }
  }

  //Custom router
  static Route<dynamic> generateRoutesCustom(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/':
        return SlideRightRoute(page: LandingScreen());
        break;
      case '/login_screen':
        return SlideLeftRoute(page: LoginScreen());
        break;
      /*   case '/login_screen':
        return EnterExitRoute(
            enterPage: LoginScreen(), exitPage: LandingScreen());
        break;*/
    }
  }

  //Name Router
  // Navigator.pushNamed(context, '/login_screen');
  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      '/': (context) => LandingScreen(),
      '/login_screen': (context) => LoginScreen(),
    };
  }
}
