import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbite/presentation/themes/app_colors.dart';
import 'package:foodbite/presentation/ui/registration/components/registration_bg.dart';
import 'package:foodbite/presentation/ui/registration/components/text_filed_widget.dart';
import 'package:foodbite/presentation/ui/registration/controller/registration_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/bluer_bg.dart';

class RegistrationScreen extends StatelessWidget {
  static const ROUTE_NAME = "/registration_screen";
  final RegistrationController _registrationController =
      Get.put(RegistrationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RegistrationBG(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          BluerBg(),
                          Positioned(
                            height: 45,
                            width: 45,
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                "assets/svgs/upload_image.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                TextFiledWidget(
                    textEditingController:
                        _registrationController.textEditingControllerName,
                    imageUrl: "assets/svgs/person.svg",
                    hintText: "Name"),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => TextFiledWidget(
                    textEditingController:
                        _registrationController.textEditingControllerEmail,
                    imageUrl: "assets/svgs/email.svg",
                    hintText: "Email",
                    error: _registrationController.emailError.value,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => TextFiledWidget(
                    textEditingController:
                        _registrationController.textEditingControllerPass,
                    imageUrl: "assets/svgs/lock.svg",
                    hintText: "Password",
                    error: _registrationController.passError.value,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFiledWidget(
                  imageUrl: "assets/svgs/lock.svg",
                  hintText: "Confirm Password",
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      _registrationController.registerWithEmailAndPass();
                      // _registrationController.moveToWelcome();
                    },
                    color: AppColors.dodger_blue,
                    child: Text(
                      'Register',
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
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    _registrationController.moveToLogin();
                  },
                  child: RichText(
                    text: TextSpan(
                      style:
                          GoogleFonts.josefinSans(color: AppColors.dodger_blue),
                      children: [
                        TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        TextSpan(
                          text: ' Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.dodger_blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(() => _registrationController.loginStatus.value ==
                    LoginStatus.IN_PROGRESS
                ? CircularProgressIndicator()
                : SizedBox()),
          )
        ],
      ),
    );
  }
}
