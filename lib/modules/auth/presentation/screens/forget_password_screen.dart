
import 'package:ecommerce_app/modules/auth/presentation/widgets/forget_password_screen_body.dart';
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





