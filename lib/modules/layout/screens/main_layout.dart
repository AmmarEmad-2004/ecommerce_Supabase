import 'package:ecommerce_app/modules/layout/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

