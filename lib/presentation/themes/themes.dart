import 'package:flutter/material.dart';
import 'package:foodbite/presentation/themes/text_themes.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  Themes._();

  static ThemeData get themeData => ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextThemes.textTheme);
}
