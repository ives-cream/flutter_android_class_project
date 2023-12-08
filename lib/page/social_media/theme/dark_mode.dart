import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: ColorMatchings.color3_6,
    primary: ColorMatchings.color3_5,
    secondary: ColorMatchings.color1_3,
    inversePrimary: ColorMatchings.color1_2,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: ColorMatchings.color1_2,
        displayColor: Colors.white,
      ),
);
