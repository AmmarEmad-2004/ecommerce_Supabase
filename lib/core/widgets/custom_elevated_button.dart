import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.data,
    this.borderRadius = BorderRadius.zero,
    this.fontSize = 20,
  });
  final Function()? onPressed;
  final String data;
  final BorderRadiusGeometry borderRadius;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        backgroundColor: AppColors.kPrimaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        data,
        style: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
