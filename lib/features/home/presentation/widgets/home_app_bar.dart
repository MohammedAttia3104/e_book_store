import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svgsView,
        ),
        const Spacer(),
        Switch.adaptive(
          value: true,
          onChanged: (value) {},
        ),
        horizontalSpace(8),
        CircleAvatar(
          radius: 20.r,
          backgroundImage: const AssetImage(
            Assets.imagesDemo,
          ),
        ),
      ],
    );
  }
}
