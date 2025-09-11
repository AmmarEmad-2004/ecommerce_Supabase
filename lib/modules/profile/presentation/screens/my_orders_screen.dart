import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColors.kWhiteColor),
          ),
          backgroundColor: AppColors.kPrimaryColor,
          title: Text(
            'My orders',
            style: TextStyle(color: AppColors.kWhiteColor, fontSize: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ProductsListView(
            shrinkWrap: false,
            physics: BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
