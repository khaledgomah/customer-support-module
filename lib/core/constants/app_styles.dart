
import 'dart:ui';

import 'package:customer_support_module/core/constants/app_fonts.dart';

class AppStyles {


  static TextStyle bold16() {
    return TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle bold20() {
    return  TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeightManager.bold,
      fontSize: 20,
    );
  }

  static TextStyle medium12() {
    return  TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: 12,
    );
  }

  static TextStyle medium14() {
    return  TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: 14,
    );
  }

  static TextStyle medium16() {
    return TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: 16,
    );
  }

  static TextStyle regular12() {
    return  TextStyle(
      fontFamily: AppFonts.fontFamily,
      fontWeight: FontWeightManager.regular,
      fontSize: 12,
    );
  }

}
