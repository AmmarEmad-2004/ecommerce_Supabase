import 'package:ecommerce_app/core/routing/app_router.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      color: AppColors.kScaffoldColor,
      routerConfig: AppRouter.router,
    );
  }
}
