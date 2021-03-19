import 'package:flutter/material.dart';
import 'package:foodbite/presentation/themes/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final isBorder;
  ButtonWidget({this.isBorder});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          // _registrationController.moveToWelcome();
        },
        color:
            !isBorder ? AppColors.dodger_blue : Colors.white.withOpacity(0.95),
        child: Text(
          isBorder ? "Settings" : "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 18,
            color: !isBorder ? Colors.white : Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: isBorder
                ? BorderSide(color: Colors.grey.withOpacity(0.3))
                : BorderSide.none),
      ),
    );
  }
}
