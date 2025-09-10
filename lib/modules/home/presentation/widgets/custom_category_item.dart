import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCategotyItem extends StatelessWidget {
  const CustomCategotyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 27,
          backgroundColor: AppColors.kPrimaryColor,
          child: Icon(size: 35, Icons.sports, color: AppColors.kWhiteColor),
        ),
        Text(
          'Sports',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}