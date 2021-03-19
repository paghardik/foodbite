import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodbite/presentation/themes/app_colors.dart';
import 'package:foodbite/presentation/ui/login/controller/login_controller.dart';
import 'package:get/get.dart';

import 'forgot_password.dart';

class FormWidget extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  LoginController _loginController = Get.find<LoginController>();
  FormWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width - 50,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/email.svg",
                color: Colors.white,
                height: 22,
                width: 22,
              ),
              Expanded(
                child: TextField(
                  controller: _loginController.emailController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffffffff),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    fillColor: Colors.grey.withOpacity(0.6),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  /*  validator: _loginController.emailValidation,*/
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width - 50,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/lock.svg",
                color: Colors.white,
                height: 24,
                width: 24,
              ),
              Expanded(
                child: TextField(
                  cursorColor: Colors.white,
                  controller: _loginController.passwordController,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffffffff),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    fillColor: Colors.grey.withOpacity(0.6),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ForgotPassword(voidCallBack: () {
          //Get.toNamed("/forgot_pass");
          _loginController.forgotPassword();
        }),
        SizedBox(height: MediaQuery.of(context).size.height * 0.10),
        SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              _loginController.loginEvent();
            },
            color: AppColors.dodger_blue,
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        GestureDetector(
          onTap: () {
            _loginController.moveToRegister();
          },
          child: Text(
            'Create New Account',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.white,
              decorationThickness: 1,
              shadows: [
                Shadow(color: Colors.white, offset: Offset(0.0, -5.0)),
              ],
              fontSize: 18,
              color: Colors.transparent,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
