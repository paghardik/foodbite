import 'package:flutter/material.dart';
import 'package:foodbite/presentation/ui/profile/widgets/button_widget.dart';

class EditProfileAndSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: ButtonWidget(
              isBorder: false,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: ButtonWidget(
              isBorder: true,
            ),
          ),
        )
      ],
    );
  }
}
