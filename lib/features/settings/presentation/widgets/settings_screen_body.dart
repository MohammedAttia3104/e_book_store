import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RoundedRectangleBorder listTileSide = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r),
      side: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
    );

    return Padding(
      padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
      child: Column(
        children: [
          ListTile(
            shape: listTileSide,
            onTap: () {
              context.pushNamed(Routes.favoriteScreen);
            },
            leading: Icon(
              Icons.favorite_border,
              size: 36.r,
            ),
            title: Text(
              'Favorites',
              style: AppStyles.font20Bold,
            ),
            subtitle: const Text('10 items'),
          ),
          verticalSpace(12),
          ListTile(
            shape: listTileSide,
            onTap: () {
              context.pushNamed(Routes.downloadScreen);
            },
            leading: Icon(
              Icons.file_download_outlined,
              size: 36.r,
            ),
            title: Text(
              'Downloads',
              style: AppStyles.font20Bold,
            ),
            subtitle: const Text('10 items'),
          ),
          verticalSpace(12),
          ListTile(
            shape: listTileSide,
            leading: Icon(
              Icons.info_outline,
              size: 36.r,
            ),
            title: Text(
              'About',
              style: AppStyles.font20Bold,
            ),
          ),
        ],
      ),
    );
  }
}
