import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFiledWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String imageUrl;
  final String hintText;
  const TextFiledWidget({
    Key key,
    this.textEditingController,
    this.imageUrl,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 50,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            imageUrl,
            color: Colors.white,
            height: 22,
            width: 22,
          ),
          Expanded(
            child: TextField(
              controller: textEditingController,
              cursorColor: Colors.white,
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                fillColor: Colors.grey.withOpacity(0.6),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
              ),
              /*  validator: _loginController.emailValidation,*/
            ),
          ),
        ],
      ),
    );
  }
}
