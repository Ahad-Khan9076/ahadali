import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final light = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.secondary,
    ),
  );
}
