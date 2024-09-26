import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Explore Screen',style: AppStyles.font16BlueMedium,),
      ),
    );
  }
}
