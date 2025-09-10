import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(15),

            Text(
              'Your Favorite Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),

            verticalSpace(15),
            ProductsListView(),
          ],
        ),
      ),
    );
  }
}
