import 'package:flutter/material.dart';
import 'package:foodbite/comman/constent.dart';
import 'package:foodbite/presentation/ui/profile/components/edit_profile_setting_component.dart';
import 'package:foodbite/presentation/ui/profile/widgets/button_widget.dart';

import 'components/counter_diasplay.dart';

class ProfileScreen extends StatelessWidget {
  static const ROUTE_NAME = "/profileScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white.withOpacity(0.95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 65,
              backgroundImage:
                  NetworkImage("https://picsum.photos/seed/picsum/200/300"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "John Williams",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "google@gmail.com",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CounterDisplay(),
            SizedBox(
              height: 20,
            ),
            EditProfileAndSetting(),
          ],
        ),
      ),
    );
  }
}
