import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.png',
      text: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.png',
      text: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/general.png',
      text: 'Gerneral',
    ),
    CategoryModel(
      image: 'assets/health.png',
      text: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.png',
      text: 'Science',
    ),
    CategoryModel(
      image: 'assets/sports.png',
      text: 'Sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return CategoryItem(
              category: categories[index],
            );
          })),
    );
  }
}
