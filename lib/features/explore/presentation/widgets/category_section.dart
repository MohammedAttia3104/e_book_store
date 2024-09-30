import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import '../controllers/explore_cubit.dart';
import 'category_list_view.dart';

class CategorySection extends StatefulWidget {
  final String category;

  const CategorySection({required this.category, super.key});

  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.7 &&
        !context.read<ExploreCubit>().isLoading &&
        context.read<ExploreCubit>().hasMoreData) {
      context.read<ExploreCubit>().fetchExploredCategories(
            isPagination: true,
            category: widget.category,
          );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.category,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpace(16),
        SizedBox(
          height: 250.h,
          child: CategoryListView(
            scrollController: _scrollController,
            category: widget.category,
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
