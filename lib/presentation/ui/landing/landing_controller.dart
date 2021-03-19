import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodbite/presentation/ui/home/home_screen.dart';
import 'package:foodbite/presentation/ui/main/main_screen.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  FirebaseAuth _firebaseAuth;

  @override
  void onInit() {
    super.onInit();
    _firebaseAuth = FirebaseAuth.instance;
    moveToNext();
  }

  moveToNext() async {
    await Future.delayed(Duration(seconds: 4));
    if (await checkUserIsLogin()) {
      moveToMainScreen();
    } else {
      moveToLoginScreen();
    }
  }

  Future<bool> checkUserIsLogin() async {
    if (_firebaseAuth.currentUser != null) {
      return true;
    }
    return false;
  }

  moveToLoginScreen() {
    Get.offAllNamed("/login_screen");
  }

  moveToMainScreen() {
    Get.offAllNamed(MainScreen.ROUTE_NAME);
  }
}
