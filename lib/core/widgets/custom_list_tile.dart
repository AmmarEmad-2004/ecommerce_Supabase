import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.leadingText, this.onTap});
  final String leadingText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        leadingText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onTap,
          child: Icon(Icons.arrow_forward, color: AppColors.kWhiteColor),
        ),
      ),
    );
  }
}
