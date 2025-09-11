import 'package:ecommerce_app/core/routing/app_routers.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_product_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.productDetails);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        color: Color(0xfff7f2fa),
        child: Column(
          children: [
            CustomProductImage(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: AppColors.kGreyColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '233 LE',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '290 LE',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.kGreyColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  CustomElevatedButton(
                    borderRadius: BorderRadius.circular(8),
                    fontSize: 16,
                    data: "Buy Now",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
