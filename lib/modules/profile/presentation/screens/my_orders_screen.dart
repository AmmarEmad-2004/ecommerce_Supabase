import 'package:ecommerce_app/core/helpers/build_app_bar.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context, title: 'My orders'),
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
