
  import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,{required String title}) {
    return AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.kWhiteColor),
        ),
        backgroundColor: AppColors.kPrimaryColor,
        title: Text(
          title,
          style: TextStyle(color: AppColors.kWhiteColor, fontSize: 24),
        ),
      );
  }