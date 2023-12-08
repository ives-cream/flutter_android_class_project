import 'package:android_class/untils/color_matching.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: ColorMatchings.color1_1,
    primary: ColorMatchings.color1_2,
    secondary: ColorMatchings.color3_5,
    inversePrimary: ColorMatchings.color3_6,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: ColorMatchings.color3_6,
        displayColor: Colors.black,
      ),
);
