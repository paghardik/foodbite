import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodbite/presentation/themes/app_colors.dart';
import 'package:foodbite/presentation/ui/welcome/components/welcome_bg.dart';
import 'package:foodbite/presentation/ui/welcome/controller/welcome_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/skip_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const ROUTE_NAME = "/welcome_screen";
  WelcomeController _welcomeController = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          WelcomeBG(),
          SkipButton(),
          FractionallySizedBox(
            heightFactor: 0.6,
            widthFactor: 1,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                      text: "Hi Bob \n",
                      children: [
                        TextSpan(text: "Welcome to\n"),
                        TextSpan(
                          text: "Foodybite",
                          style: TextStyle(color: AppColors.supernovaapprox),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Please turn on your GPS to find out better restaurant suggestionsnear you.',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300,
                      height: 1.30,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        _welcomeController.moveToMainScreen();
                      },
                      color: AppColors.dodger_blue,
                      child: Text(
                        'Turn on GPS',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
