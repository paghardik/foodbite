import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/pagha/workspace/FlutterWorkspace/FoodBite/foodbite/lib/presentation/ui/landing/landing_screen.dart';
import 'package:foodbite/presentation/themes/themes.dart';
import 'package:foodbite/presentation/ui/rotes/get_pages_route.dart';
import 'package:foodbite/presentation/ui/rotes/routes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes.themeData,
      initialRoute: '/',
      /*onGenerateRoute: RouteGenerator.generateRoutesCustom,*/
      getPages: GetPages.getPages,
      home: Scaffold(
        body: LandingScreen(),
      ),
    );
  }
}
