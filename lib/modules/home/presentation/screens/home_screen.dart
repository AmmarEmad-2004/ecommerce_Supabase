import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/categories_list_view.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_search_text_feild.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(15),
            CustomSearchTextFeild(onPressed: () {}),
            verticalSpace(15),
            Image.asset('assets/images/buy.jpg'),
            verticalSpace(15),
            Text(
              'Popular Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            verticalSpace(15),
            CategoriesListView(),
            verticalSpace(15),
            Text(
              'Recently Products',
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
