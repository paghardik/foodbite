import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder _outLineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.5),
          width: 2,
          style: BorderStyle.solid),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              "assets/svgs/search.svg",
              height: 3,
              width: 3,
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                "assets/svgs/filtter.svg",
                height: 3,
                width: 3,
              ),
            ),
          ),
          hintText: "Find Restaurant",
          hintStyle: TextStyle(
              color: const Color(0xcc6e7faa),
              fontSize: 22,
              fontWeight: FontWeight.w700),
          border: _outLineInputBorder,
          enabledBorder: _outLineInputBorder,
          focusedBorder: _outLineInputBorder,
        ),
      ),
    );
  }
}
