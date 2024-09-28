import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Downloads',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Downloads'),
      ),
    );
  }
}
