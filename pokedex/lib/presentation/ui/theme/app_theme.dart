import 'package:flutter/material.dart';

import '../ui.dart';

class AppTheme {
  static ThemeData primary() {
    return ThemeData(
      primaryColor: AppColors.primary,
      textTheme: TextStyles.textTheme,
      primaryColorDark: AppColors.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme(
        primary: AppColors.primary,
        primaryVariant: AppColors.primary,
        secondary: AppColors.primary,
        secondaryVariant: AppColors.primary,
        surface: AppColors.background,
        background: AppColors.background,
        error: Colors.red,
        onPrimary: AppColors.light,
        onSecondary: AppColors.light,
        onSurface: AppColors.primaryDark,
        onBackground: AppColors.primaryDark,
        onError: AppColors.light,
        brightness: Brightness.light,
      ),
    );
  }
}
