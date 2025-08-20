import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_search_text_feild.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomSearchTextFeild(),
        ),
      ],
    );
  }
}

