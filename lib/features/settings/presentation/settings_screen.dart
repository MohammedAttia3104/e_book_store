import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:e_book_store/features/favorite/presentation/controllers/favorite_cubit.dart';
import 'package:e_book_store/features/settings/presentation/widgets/settings_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SettingsScreenBody(),
    );
  }
}
