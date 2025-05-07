import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isFilled;

  const CustomButton({
    required this.text,
    required this.onTap,
    this.isFilled = true,
    required Null Function() onPressed,
    required Color color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isFilled ? AppColors.primary : Colors.white,
        foregroundColor: isFilled ? Colors.white : AppColors.primary,
        side: BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 34),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
