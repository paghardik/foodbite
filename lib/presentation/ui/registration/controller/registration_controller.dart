import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodbite/comman/constent.dart';
import 'package:foodbite/presentation/ui/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();

  var _emailError = Rx<String>(null);
  var _passError = Rx<String>(null);
  Rx<String> get emailError => _emailError;
  Rx<String> get passError => _passError;

  var isAllFieldValid = true;

  /*FireBase*/
  FirebaseAuth _firebaseAuth;
  FirebaseFirestore _firebaseFirestore;

  var _applicationLoginState = ApplicationLoginState.loggedIn.obs;
  Rx<ApplicationLoginState> get applicationLoginState => _applicationLoginState;

  //Login Status track login process
  Rx<LoginStatus> _loginStatus = LoginStatus.NOTHING.obs;
  Rx<LoginStatus> get loginStatus => _loginStatus;

  @override
  void onInit() {
    _firebaseAuth = FirebaseAuth.instance;
    _firebaseFirestore = FirebaseFirestore.instance;
  }

  registerWithEmailAndPass() async {
    // await validateField();
    //if (!isAllFieldValid) return;
    print("Step 1");
    _loginStatus.value = LoginStatus.IN_PROGRESS;
    print("Step 2 ${_loginStatus.value}");
    await dummyCall();
    print("Step 3 ${_loginStatus.value}");
    _loginStatus.value = LoginStatus.SUCCESS;
    print("Step 4 ${_loginStatus.value}");
    /*   var credential = _firebaseAuth
        .createUserWithEmailAndPassword(
            email: textEditingControllerEmail.text,
            password: textEditingControllerPass.text)
        .then(
      (value) {
        moveToWelcome();
      },
      onError: (e) {
        print("ERROR ${e}");
        Get.snackbar("Error", e.toString(), colorText: Colors.white);
      },
    );*/
    Future<UserCredential> credential =
        _firebaseAuth.createUserWithEmailAndPassword(
            email: textEditingControllerEmail.text,
            password: textEditingControllerPass.text);
    credential.then((result) {
      print("Display Name ${result.user.displayName}");
      print("Uid Name ${result.user.uid}");
      CollectionReference userCollection =
          _firebaseFirestore.collection("User");
      userCollection.doc(result.user.uid).set({
        "email": textEditingControllerEmail.text,
        "name": textEditingControllerName.text,
      }).then(
        (value) {
          textEditingControllerName.clear();
          textEditingControllerPass.clear();
          textEditingControllerEmail.clear();
          moveToWelcome();
        },
      );
    }, onError: (e) {
      print("ERROR ${e}");
      Get.snackbar("Error", e.toString(), colorText: Colors.white);
    });
  }

  moveToLogin() {
    Get.back();
  }

/*  validateField() async {
    isAllFieldValid = true;
    if (Constant.emailRegExp.hasMatch(textEditingControllerEmail.text)) {
      _emailError.value = null;
    } else {
      isAllFieldValid = false;
      _emailError.value = "Invalid Email Address";
    }

    if (textEditingControllerPass.text.length > 6) {
      _passError.value = null;
    } else {
      isAllFieldValid = false;
      _passError.value = "Invalid Email Password";
    }
  }*/

  moveToWelcome() {
    Get.offAllNamed(WelcomeScreen.ROUTE_NAME);
  }

  Future<void> dummyCall() async {
    await Future.delayed(Duration(seconds: 4));
  }

  @override
  void onClose() {
    textEditingControllerName.clear();
    textEditingControllerEmail.clear();
    textEditingControllerPass.clear();
  }
}

enum LoginStatus {
  SUCCESS,
  FAILED,
  IN_PROGRESS,
  NOTHING,
}

enum ApplicationLoginState {
  loggedOut,
  emailAddress,
  register,
  password,
  loggedIn,
  nothing,
}
