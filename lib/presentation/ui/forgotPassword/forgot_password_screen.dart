import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbite/presentation/themes/app_colors.dart';
import 'package:foodbite/presentation/ui/forgotPassword/components/forgot_pass_bg.dart';
import 'package:foodbite/presentation/ui/forgotPassword/controller/forgot_password_controller.dart';
import 'package:get/get.dart';

import 'components/text_filed_widget.dart';

class ForgotPassword extends StatelessWidget {
  static const ROUTE_NAME = "/forgot_pass";
  final ForgotPasswordController _forgotPasswordController =
      Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: Stack(
        //overflow: Overflow.clip,
        children: [
          ForgotPasswordBG(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Text(
                    'Enter your email and will sendyou instructions on how to reset it',
                    style: TextStyle(
                      fontSize: 22,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  TextFiledWidget(
                    hintText: "Email",
                    imageUrl: "assets/svgs/email.svg",
                    textEditingController:
                        _forgotPasswordController.forgotPassController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {},
                      color: AppColors.dodger_blue,
                      child: Text(
                        'Send',
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
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            child: ActionBarForgotPass(),
          ),
        ],
      ),
    );
  }
}

class ActionBarForgotPass extends StatelessWidget {
  ForgotPasswordController _forgotPasswordController =
      Get.find<ForgotPasswordController>();
  ActionBarForgotPass({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              //Get.back();
              _forgotPasswordController.backButtonEvent();
            },
            child: SvgPicture.asset(
              "assets/svgs/back_arrow.svg",
              height: 30,
              width: 30,
            ),
          ),
          Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 22,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
            width: 30,
          ),
        ],
      ),
    );
  }
}
