import 'package:customer_support_module/core/constants/app_colors.dart';
import 'package:customer_support_module/core/constants/app_fonts.dart';
import 'package:customer_support_module/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    //divider
    dividerTheme: const DividerThemeData(color: AppColors.salmon, space: 32),
    dividerColor: AppColors.salmon,
    
    //scaffold
    scaffoldBackgroundColor: AppColors.white,

    //appBar
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: FontSize.s22,
        fontWeight: FontWeightManager.semiBold,
        color: AppColors.salmon,
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
    ),

    //texts and fonts
    fontFamily: AppFonts.fontFamily,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: FontSize.s22,
        fontWeight: FontWeightManager.bold,
        color: AppColors.salmon,
      ),
      headlineMedium: TextStyle(
        fontSize: FontSize.s18,
        fontWeight: FontWeightManager.semiBold,
        color: AppColors.black,
      ),
      titleLarge: TextStyle(
        fontSize: FontSize.s18,
        fontWeight: FontWeightManager.semiBold,
        color: AppColors.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeightManager.medium,

        fontSize: FontSize.s18,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(fontSize: FontSize.s12, color: AppColors.black),
    ),

    //buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.beige,
        foregroundColor: AppColors.brownRosy,
        textStyle: const TextStyle(fontSize: FontSize.s16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s32),
        ),
      ),
    ),

    //listTile
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.zero,
      iconColor: AppColors.salmon,
      titleTextStyle: TextStyle(
        fontSize: FontSize.s18,
        fontWeight: FontWeightManager.medium,
        color: AppColors.black,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: FontSize.s14,
        fontWeight: FontWeightManager.regular,
        color: AppColors.black,
      ),
    ),
  );
}
