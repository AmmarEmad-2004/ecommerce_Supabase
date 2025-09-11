import 'package:ecommerce_app/core/helpers/build_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: buildAppBar(context, title: 'Product Details')),
    );
  }
}
