import 'package:e_book_store/features/home/presentation/widgets/home_recently_added_books.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_search_view.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_welcome_body.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 16.0.w, left: 16.0.w, top: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                verticalSpace(30),
                const HomeWelcomeBody(),
                const HomeSearchView(),
                const HomeRecentlyAddedBooks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
