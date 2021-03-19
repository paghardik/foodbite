import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController forgotPassController;

  @override
  void onInit() {
    super.onInit();
    forgotPassController = TextEditingController();
  }

  backButtonEvent() {
    Get.back();
  }
}
