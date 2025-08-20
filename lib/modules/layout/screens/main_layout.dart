import 'package:ecommerce_app/modules/layout/logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:ecommerce_app/modules/layout/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: Scaffold(bottomNavigationBar: CustomNavBar()),
    );
  }
}
