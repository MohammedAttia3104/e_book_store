import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_details_data_part.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_description_part.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_screen_app_bar.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_screen_cover_and_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, right: 16.w, left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookScreenCoverAndData(),
              verticalSpace(20),
              const BookDescriptionPart(),
              verticalSpace(20),
              const BookDetailsDataPart(),
            ],
          ),
        ),
      ),
    );
  }
}
