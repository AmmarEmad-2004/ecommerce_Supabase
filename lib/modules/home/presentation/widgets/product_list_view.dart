import 'package:ecommerce_app/modules/home/presentation/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key, this.shrinkWrap, this.physics});
  final bool? shrinkWrap;
   final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:shrinkWrap?? true,
      physics:physics?? NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return CustomProductCard();
      },
    );
  }
}
