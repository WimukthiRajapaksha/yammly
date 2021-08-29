import 'package:flutter/material.dart';

class ScreenConst {
  static MediaQueryData? _mediaQueryData;
  static var screenWidth;
  static var screenHeight;

  ScreenConst(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
  }

  static double heightRatio(double ratio) {
    return (_mediaQueryData?.size.height ?? 0) * ratio / 100;
  }

  static double widthRatio(double ratio) {
    return (_mediaQueryData?.size.width ?? 0) * ratio / 100;
  }
}
