import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: AppColors.kScaffoldColor,
      home: LoginScreen(),
    );
  }
}


