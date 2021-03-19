import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbite/presentation/ui/login/controller/login_controller.dart';
import 'package:get/get.dart';

import 'components/login_bg.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.clip,
        children: [
          LoginBg(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  FoodBiteTextJS(text: "Foodybite"),
                  FormWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodBiteTextJS extends StatelessWidget {
  final String text;
  final Color color;
  final String fontFamily;
  final double fontSize;
  const FoodBiteTextJS({
    Key key,
    this.text,
    this.color = Colors.white,
    this.fontFamily = "Josefin Sans",
    this.fontSize = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
