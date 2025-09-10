import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/layout/logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      navBarItem(icon: Icons.home, label: 'Home'),
      navBarItem(icon: Icons.store, label: 'Store'),
      navBarItem(icon: Icons.favorite, label: 'Favorites'),
      navBarItem(icon: Icons.person, label: 'Profile'),
    ];
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          elevation: 3,
          type: BottomNavigationBarType.fixed,

          backgroundColor: AppColors.kWhiteColor,
          selectedItemColor: AppColors.kPrimaryColor,
          unselectedItemColor: AppColors.kGreyColor,
          onTap: (value) {
            context.read<NavBarCubit>().changeIndex(value);
          },
          currentIndex: state.index,
          items: items,
        );
      },
    );
  }

  BottomNavigationBarItem navBarItem({
    required IconData icon,
    required String label,
  }) => BottomNavigationBarItem(icon: Icon(icon), label: label);
}
