import 'package:flutter/material.dart';
import 'package:foodbite/presentation/ui/home/home_screen.dart';
import 'package:foodbite/presentation/ui/main/controller/main_controller.dart';
import 'package:foodbite/presentation/ui/profile/profile_screen.dart';
import 'package:get/get.dart';

class MainScreenIndexedStack extends StatelessWidget {
  final MainController _mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Obx(() => IndexedStack(
            index: _mainController.currentIndex.value,
            children: [
              Container(
                color: Colors.green,
              ),
              HomeScreen(),
              Container(
                color: Colors.brown,
              ),
              Container(
                color: Colors.yellow,
              ),
              ProfileScreen(),
            ],
          )),
    );
  }
}
