import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/core/widgets/custom_list_tile.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFeild(keyboardType: TextInputType.name,hint: 'Name'),
        verticalSpace(20),
        CustomTextFormFeild(keyboardType: TextInputType.emailAddress,hint: 'Email'),
        verticalSpace(20),
        CustomTextFormFeild(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          hint: 'Password',
          suffixIcon: Icon(Icons.visibility_off),
        ),
        verticalSpace(20),

        CustomListTile(onTap: () {}, leadingText: 'Sign UP'),
        CustomListTile(onTap: () {}, leadingText: 'Sign UP With Google'),
        verticalSpace(20),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Login',
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
