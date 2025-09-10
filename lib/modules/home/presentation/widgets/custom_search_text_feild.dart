import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        labelText: 'Search in Market',
        labelStyle: TextStyle(color: AppColors.kGreyColor),
        suffixIcon: CustomSearchIcon(onPressed: onPressed),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() => OutlineInputBorder(
    borderSide: BorderSide(width: 2, color: AppColors.kBordersideColor),
    borderRadius: BorderRadius.circular(10),
  );
}
