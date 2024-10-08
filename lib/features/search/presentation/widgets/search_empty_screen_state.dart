import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SearchEmptyScreenState extends StatelessWidget {
  const SearchEmptyScreenState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/lottie/empty_search.json',
          width: 300.w,
          height: 300.h,
        ),
        Center(
          child: Text(
            'No books found\nTry another search !!',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeightHelper.medium,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
