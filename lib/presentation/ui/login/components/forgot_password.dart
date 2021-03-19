import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final void Function() voidCallBack;
  const ForgotPassword({
    Key key,
    this.voidCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GestureDetector(
          onTap: voidCallBack,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xffffffff),
                height: 0.96,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}
