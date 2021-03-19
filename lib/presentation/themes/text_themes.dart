import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  TextThemes._();

/*  static TextTheme _textThemes(){
    return GoogleFonts.josefinSansTextTheme();
  }*/
  static TextTheme get _textThemes => GoogleFonts.josefinSansTextTheme();

  /*
  * https://api.flutter.dev/flutter/material/TextTheme-class.html
  * https://material.io/design/typography/the-type-system.html#type-scale
  * */

  //Headline1 => Size => 96
  static TextStyle get _tStyleHeadline1 => _textThemes.headline1.copyWith();

  //Headline2 => Size => 60
  static TextStyle get _tStyleHeadline2 => _textThemes.headline2.copyWith();

  //Headline3 => Size => 48
  static TextStyle get _tStyleHeadline3 => _textThemes.headline3.copyWith();

  //Headline4 => Size => 34
  static TextStyle get _tStyleHeadline4 => _textThemes.headline4.copyWith();

  //Headline5 => Size => 24
  static TextStyle get _tStyleHeadline5 => _textThemes.headline5.copyWith();

  //Headline6 => Size => 20
  static TextStyle get _tStyleHeadline6 => _textThemes.headline6.copyWith();

  //SubTitle1 => Size => 16
  static TextStyle get _tStyleSubTitle1 => _textThemes.subtitle1.copyWith();

  //SubTitle2 => Size => 14
  static TextStyle get _tStyleSubTitle2 => _textThemes.subtitle2.copyWith();

  //body1 => Size => 16
  static TextStyle get _tStyleBody1 => _textThemes.bodyText1.copyWith();

  //body2 => Size => 14
  static TextStyle get _tStyleBody2 => _textThemes.bodyText2.copyWith();

  //button => Size => 14
  static TextStyle get _tStyleButton => _textThemes.button.copyWith();

  //caption => Size => 12
  static TextStyle get _tStyleCaption => _textThemes.caption.copyWith();

  //overline => Size => 10
  static TextStyle get _tStyleOverLine => _textThemes.overline.copyWith();

  static TextTheme get textTheme => TextTheme(
        headline1: _tStyleHeadline1,
        headline2: _tStyleHeadline2,
        headline3: _tStyleHeadline3,
        headline4: _tStyleHeadline4,
        headline5: _tStyleHeadline5,
        headline6: _tStyleHeadline6,
        subtitle1: _tStyleSubTitle1,
        subtitle2: _tStyleSubTitle2,
        bodyText1: _tStyleBody1,
        bodyText2: _tStyleBody2,
        button: _tStyleButton,
        caption: _tStyleCaption,
        overline: _tStyleOverLine,
      );
}
