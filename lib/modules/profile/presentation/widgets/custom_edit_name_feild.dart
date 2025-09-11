import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomEditNameField extends StatelessWidget {
  const CustomEditNameField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),

      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: AppColors.kGreyColor,
          fontWeight: FontWeight.w900,
        ),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: const Color.fromARGB(255, 216, 196, 196),
        width: 2,
      ),
    );
  }
}
