import 'package:e_book_store/features/home/presentation/widgets/home_body_builder.dart';
import 'package:e_book_store/core/layout/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyBuilder(),
    );
  }
}
