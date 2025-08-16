import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/widgets/custom_background.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ForgetPasswordScreenBody(),
        ),
      ),
    );
  }
}

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 60),
          Text(
            'Wellcome To Our Market',
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


class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFeild(hint: 'Email'),
                verticalSpace(20),
                

      ],
    );
  }
}