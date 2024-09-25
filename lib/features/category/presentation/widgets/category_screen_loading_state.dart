import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryScreenLoadingState extends StatelessWidget {
  const CategoryScreenLoadingState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 16.w, left: 16.w),
        child: Center(
          child: Wrap(
            spacing: 15.w,
            runSpacing: 10.h,
            children: List.generate(
              15,
              (index) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  child: Column(
                    children: [
                      Skeletonizer(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.25,
                          height: 150.h,
                          color: Colors.grey,
                        ),
                      ),
                      verticalSpace(8),
                      Skeletonizer(
                        child: Container(
                          width: double.infinity,
                          height: 20.h,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
