import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/profile/presentation/widgets/custom_profile_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.kPrimaryColor,
                  child: Icon(
                    Icons.person,
                    color: AppColors.kWhiteColor,
                    size: 50,
                  ),
                ),
                Text(
                  "Ammar Emad",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("Ammarzewain@gmail.com", style: TextStyle(fontSize: 20)),
                verticalSpace(20),
                CustomProfileIcons(title: 'Edit Name', icon: Icons.person),
                verticalSpace(8),
                CustomProfileIcons(
                  title: 'My Orders',
                  icon: Icons.shopping_basket,
                ),
                verticalSpace(8),
                CustomProfileIcons(title: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


