import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/home/data/models/category_item_model.dart';
import 'package:flutter/material.dart';

class CustomCategotyItem extends StatelessWidget {
  const CustomCategotyItem({super.key, required this.item});
  final CategoryItemModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 27,
          backgroundColor: AppColors.kPrimaryColor,
          child: Icon(size: 35, item.icon, color: AppColors.kWhiteColor),
        ),
        Text(
          item.title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
