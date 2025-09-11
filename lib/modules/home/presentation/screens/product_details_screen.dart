import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/helpers/build_app_bar.dart';
import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/rate_section.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/user_comments_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context, title: 'Product Details'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://th.bing.com/th/id/OIP.nsj3P9m7AbD3LhYT6epN2gHaEo?w=267&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                    placeholder:
                        (context, url) => Center(
                          child: SizedBox(
                            height: 200,
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Product Name'), Text('200 LE')],
                ),
                verticalSpace(10),
                RateSection(),
                verticalSpace(10),
                UserCommentsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






