import 'package:ecommerce_app/core/widgets/custom_background.dart';

import 'package:ecommerce_app/modules/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              child: LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}



