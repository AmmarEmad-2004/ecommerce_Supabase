import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_search_text_feild.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

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
              'Welcome To Our Market',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            verticalSpace(15),
            CustomSearchTextFeild(onPressed: () {}),

            verticalSpace(15),
            ProductsListView(),
          ],
        ),
      ),
    );
  }
}
