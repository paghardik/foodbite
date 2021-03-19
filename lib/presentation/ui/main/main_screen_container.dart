import 'package:flutter/material.dart';
import 'package:foodbite/presentation/ui/main/controller/main_controller.dart';
import 'package:foodbite/presentation/ui/main/main_screen_indexed_stack.dart';
import 'package:get/get.dart';

class MainScreenContainer extends StatelessWidget {
  final MainController _mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return MainScreenIndexedStack();
  }
}
