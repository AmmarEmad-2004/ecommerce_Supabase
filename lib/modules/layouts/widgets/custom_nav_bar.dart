import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        navBarItem(icon: Icons.home, label: 'Home'),
        navBarItem(icon: Icons.store, label: 'Store'),
        navBarItem(icon: Icons.favorite, label: 'Favorites'),
        navBarItem(icon: Icons.person, label: 'Profile'),
      ],
    );
  }

  BottomNavigationBarItem navBarItem({
    required IconData icon,
    required String label,
  }) => BottomNavigationBarItem(icon: Icon(icon), label: label);
}
