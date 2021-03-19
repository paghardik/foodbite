import 'package:flutter/cupertino.dart';
import 'package:foodbite/presentation/ui/forgotPassword/forgot_password_screen.dart';
import 'package:foodbite/presentation/ui/registration/registration_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
/*  static String TAG = "LoginController";
  final LoginController to = Get.find(tag: TAG);*/
  var emailAddress = "".obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  forgotPassword() {
    Get.toNamed("/forgot_pass");
  }

  moveToRegister() {
    Get.toNamed(RegistrationScreen.ROUTE_NAME);
  }

  loginEvent() {
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
  }
}
