import 'package:foodbite/presentation/ui/main/main_screen.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  moveToMainScreen() {
    Get.offAllNamed(MainScreen.ROUTE_NAME);
  }
}
