import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodbite/presentation/ui/forgotPassword/forgot_password_screen.dart';
import 'package:foodbite/presentation/ui/landing/landing_screen.dart';
import 'package:foodbite/presentation/ui/login/login_screen.dart';
import 'package:foodbite/presentation/ui/main/main_screen.dart';
import 'package:foodbite/presentation/ui/profile/profile_screen.dart';
import 'package:foodbite/presentation/ui/registration/registration_screen.dart';
import 'package:foodbite/presentation/ui/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class GetPages {
  static List<GetPage> getPages = [
    GetPage(
      name: '/',
      page: () => LandingScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
        name: '/login_screen',
        page: () => LoginScreen(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 800)),
    GetPage(
        name: "/forgot_pass",
        page: () => ForgotPassword(),
        transition: Transition.cupertino,
        transitionDuration: Duration(milliseconds: 800)),
    GetPage(
        name: RegistrationScreen.ROUTE_NAME,
        page: () => RegistrationScreen(),
        transition: Transition.downToUp),
    GetPage(
        name: WelcomeScreen.ROUTE_NAME,
        page: () => WelcomeScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: MainScreen.ROUTE_NAME,
        page: () => MainScreen(),
        transition: Transition.cupertino),
    GetPage(
      name: ProfileScreen.ROUTE_NAME,
      page: () => ProfileScreen(),
      transition: Transition.cupertino,
    )
  ];
}
