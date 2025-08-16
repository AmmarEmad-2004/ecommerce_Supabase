import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/core/widgets/custom_list_tile.dart';
import 'package:ecommerce_app/core/widgets/custom_text_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFeild(hint: 'Email'),
        SizedBox(height: 20),
        CustomTextFormFeild(
          hint: 'Password',
          suffixIcon: Icon(Icons.visibility_off),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: CustomTextButton(text: 'Forgot Password?'),
        ),
        CustomListTile(onTap: () {}, leadingText: 'Login'),
        CustomListTile(onTap: () {}, leadingText: 'Login With Google'),
        SizedBox(height: 20),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Sign Up',
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
