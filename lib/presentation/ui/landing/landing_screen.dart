import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/animated_text1.dart';
import 'components/rotate_image.dart';
import 'landing_controller.dart';

class LandingScreen extends StatelessWidget {
  LandingController _landingController = Get.put(LandingController());
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        RotateImage(),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AnimatedText1()],
          ),
        )
      ],
    );
  }
}
