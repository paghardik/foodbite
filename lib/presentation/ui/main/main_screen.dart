import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbite/presentation/ui/main/components/bottom_app_bar.dart';
import 'package:foodbite/presentation/ui/main/components/bottom_navigation_bar.dart';
import 'package:foodbite/presentation/ui/main/controller/main_controller.dart';
import 'package:foodbite/presentation/ui/main/main_screen_container.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  static const ROUTE_NAME = "/main_screen";
  final MainController _mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    double iWidth = (MediaQuery.of(context).size.width - 20.0) / 5.0;
    print("Size ${iWidth}");
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: MainScreenContainer(),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 36,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
