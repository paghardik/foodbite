import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  setTabIndex(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    currentIndex.value = 2;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
