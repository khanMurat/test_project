import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_size_constant.dart';

class CustomTheme {
  CustomTheme._init();
  static final CustomTheme _instance = CustomTheme._init();
  static CustomTheme get instance => _instance;

  ThemeData customTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: Sizes.p20,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        elevation: Sizes.p2,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black,
    ),
  );
}
