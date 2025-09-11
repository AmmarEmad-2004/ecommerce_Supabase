import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class RateSection extends StatelessWidget {
  const RateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [Text('3 '), Icon(Icons.star, color: Colors.amber)]),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        ),
        Text('Product description'),
        verticalSpace(10),
        CustomRatingBar(),
      ],
    );
  }
}