
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: 'Search in Market',
        suffixIcon: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.kPrimaryColor,
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.kBordersideColor),
    borderRadius: BorderRadius.circular(10),
  );
}