import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFeild(keyboardType: TextInputType.emailAddress,hint: 'Email'),
        verticalSpace(20),

        CustomElevatedButton(onPressed: () {}, data: 'Send'),
      ],
    );
  }
}
