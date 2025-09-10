import 'package:ecommerce_app/modules/home/data/models/category_item_model.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  static List categories = [
    CategoryItemModel(icon: Icons.sports, title: 'Sports'),
    CategoryItemModel(icon: Icons.electrical_services, title: 'Electronics'),
    CategoryItemModel(icon: Icons.collections, title: 'Collections'),
    CategoryItemModel(icon: Icons.book, title: 'Books'),
    CategoryItemModel(icon: Icons.gamepad, title: 'Games'),
    CategoryItemModel(icon: Icons.laptop, title: 'Laptops'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomCategotyItem(item: categories[index]),
          );
        },
      ),
    );
  }
}
