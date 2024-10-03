import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/features/category/presentation/widgets/category_screen_body_builder.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryTitle;

  const CategoryScreen({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: CategoryScreenBodyBuilder(category: categoryTitle),
    );
  }
}