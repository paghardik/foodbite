import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: SvgPicture.asset(
                "assets/svgs/search.svg",
                width: 22,
              ),
            ),
            Text(
              "Find Restaurant",
              style: TextStyle(
                  color: const Color(0xcc6e7faa),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: SvgPicture.asset(
                "assets/svgs/filtter.svg",
                width: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
