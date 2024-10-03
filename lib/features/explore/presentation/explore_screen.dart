import 'package:e_book_store/features/explore/presentation/controllers/explore_cubit.dart';
import 'package:e_book_store/features/explore/presentation/widgets/category_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/service_locator.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExploreCubit>(
      create: (context) => sl<ExploreCubit>(),
      child: const ExploreScreenContent(),
    );
  }
}

class ExploreScreenContent extends StatefulWidget {
  const ExploreScreenContent({super.key});

  @override
  _ExploreScreenContentState createState() => _ExploreScreenContentState();
}

class _ExploreScreenContentState extends State<ExploreScreenContent> {
  final List<String> categories = [
    "True Crime",
    "Humor",
    "Biography & Autobiography",
    "Family & Relationships",
    "Computers",
    "Cooking",
    "Social Science",
    "Political Science",
  ];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchInitialCategories();
  }

  void _fetchInitialCategories() async {
    await Future.wait(categories.map((category) {
      return context
          .read<ExploreCubit>()
          .fetchExploredCategories(category: category);
    }));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: categories
                .map((category) => _buildCategorySection(category))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection(String category) {
    return BlocProvider(
      create: (context) =>
      sl<ExploreCubit>()..fetchExploredCategories(category: category),
      child: CategorySection(category: category),
    );
  }
}



