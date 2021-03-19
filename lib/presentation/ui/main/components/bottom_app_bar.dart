import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodbite/presentation/ui/main/controller/main_controller.dart';
import 'package:get/get.dart';

class MyBottomAppBar extends StatelessWidget {
  final MainController _mainController = Get.find<MainController>();
  MyBottomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: Colors.white.withOpacity(0.95),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              border:
                  Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0)),
          child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        _mainController.setTabIndex(1);
                      },
                      icon: SvgPicture.asset(
                        _mainController.currentIndex == 1
                            ? "assets/svgs/img_home_s.svg"
                            : "assets/svgs/img_home.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        _mainController.setTabIndex(2);
                      },
                      icon: SvgPicture.asset(
                        _mainController.currentIndex == 2
                            ? "assets/svgs/img_fav_s.svg"
                            : "assets/svgs/img_fav.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: SizedBox(),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        _mainController.setTabIndex(3);
                      },
                      icon: SvgPicture.asset(
                        _mainController.currentIndex == 3
                            ? "assets/svgs/img_notification_s.svg"
                            : "assets/svgs/img_notification.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        _mainController.setTabIndex(4);
                      },
                      icon: SvgPicture.asset(
                        _mainController.currentIndex == 4
                            ? "assets/svgs/img_person_s.svg"
                            : "assets/svgs/img_person.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      color: Colors.white,
    );
  }
}

class BottomAppBarModel {
  final int index;
  final Widget widget;
  BottomAppBarModel({this.index, this.widget});

  static List<BottomAppBarModel> get appBarITem => [
        BottomAppBarModel(
          index: 1,
          widget:
              BottomAppBarItem(index: 1, imgUrl: "assets/svgs/img_home.svg"),
        ),
        BottomAppBarModel(
          index: 2,
          widget:
              BottomAppBarItem(index: 2, imgUrl: "assets/svgs/img_home.svg"),
        ),
        BottomAppBarModel(
          index: 3,
          widget: BottomAppBarItem(index: 3, imgUrl: ""),
        ),
        BottomAppBarModel(
          index: 4,
          widget:
              BottomAppBarItem(index: 4, imgUrl: "assets/svgs/img_home.svg"),
        ),
        BottomAppBarModel(
          index: 5,
          widget:
              BottomAppBarItem(index: 5, imgUrl: "assets/svgs/img_home.svg"),
        ),
      ];
}

class BottomAppBarItem extends StatelessWidget {
  final int index;
  final String imgUrl;
  const BottomAppBarItem({
    Key key,
    this.index,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return index != 3
        ? Container(
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                imgUrl,
                height: 28,
                width: 28,
              ),
            ),
          )
        : Container(
            color: Colors.transparent,
            child: SizedBox(),
          );
  }
}

/*
                  BottomAppBarItem(),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/svgs/img_fav.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: SizedBox(),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/svgs/img_notification.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/svgs/img_person.svg",
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),*/
