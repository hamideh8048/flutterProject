import 'package:flutter/material.dart';
import 'package:RoboDrop/constants/color_constants.dart';

class Themes {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.white,
      onPrimary: Colors.white,
      secondary: AppColors.spaceBlue,
      onSecondary: AppColors.spaceCadet,
      background: AppColors.babyPink,
    ),
  );

  static final darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
    primary: AppColors.spaceBlue,
    secondary: AppColors.burgundy,
    onSecondary: AppColors.spaceCadet,
    background: AppColors.spaceCadet,
  ));
}
