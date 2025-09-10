import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomProfileIcons extends StatelessWidget {
  const CustomProfileIcons({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: AppColors.kWhiteColor),
              Text(
                title,
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: AppColors.kWhiteColor),
            ],
          ),
        ),
      ),
    );
  }
}