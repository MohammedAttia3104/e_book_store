import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class RecentlyAddedBookItem extends StatelessWidget {
  final String? itemImage;
  final String? itemTitle;
  final List<String>? itemAuthor;
  final String? itemDescription;

  const RecentlyAddedBookItem({
    super.key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemAuthor,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: double.maxFinite,
      child: Row(
        children: [
          SizedBox(
            height: 200.h,
            width: 150.w,
            child: FancyShimmerImage(
              imageUrl: itemImage ?? '',
              errorWidget: Image.network('Network image goes here '),
              shimmerBaseColor: Colors.greenAccent,
              shimmerHighlightColor: Colors.grey,
              shimmerBackColor: Colors.greenAccent,
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemTitle ?? '',
                  style: AppStyles.font20BlackBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(4),
                Text(
                  itemAuthor?.join(', ') ?? '',
                  style: AppStyles.font16BlueMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(6),
                Text(
                  itemDescription ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.font14GrayRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}