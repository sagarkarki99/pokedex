import 'package:flutter/material.dart';

import '../ui.dart';

class AppTheme {
  static ThemeData primary() {
    return ThemeData(
      primaryColor: AppColors.primary,
      textTheme: TextStyles.textTheme,
    );
  }
}
