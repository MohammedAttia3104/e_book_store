import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCoverImage extends StatelessWidget {
  final String imageUrl;

  const BookCoverImage({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return FancyShimmerImage(
      imageUrl: imageUrl,
      height: 250.h,
      width: MediaQuery.sizeOf(context).width * 0.4,
      boxFit: BoxFit.cover,
    );
  }
}
