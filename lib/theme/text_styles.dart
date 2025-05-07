import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );

  static const body = TextStyle(fontSize: 14, color: AppColors.text);
}
