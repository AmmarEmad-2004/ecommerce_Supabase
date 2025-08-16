import 'package:ecommerce_app/core/widgets/custom_background.dart';
import 'package:ecommerce_app/modules/auth/presentation/widgets/forget_password_form.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Text(
          textAlign: TextAlign.center,
          'Enter Your Email To Reset Password',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        CustomBackground(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
              bottom: 10,
              top: 30,
            ),
            child: ForgetPasswordForm(),
          ),
        ),
      ],
    );
  }
}


