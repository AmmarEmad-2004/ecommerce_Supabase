import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: CachedNetworkImage(
            imageUrl:
                "https://th.bing.com/th/id/OIP.nsj3P9m7AbD3LhYT6epN2gHaEo?w=267&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        Positioned(
          child: Container(
            width: 75,
            height: 35,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '10% OFF',
                style: TextStyle(color: AppColors.kWhiteColor, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
