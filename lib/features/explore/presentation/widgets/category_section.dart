import 'package:e_book_store/features/category/presentation/widgets/book_single_item_with_image_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import '../controllers/explore_cubit.dart';

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
          child: BlocBuilder<ExploreCubit, ExploreState>(
            builder: (context, state) {
              return state.maybeWhen(
                exploreCategorySuccess: (books) {
                  return ListView.separated(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index == books.length) {
                        return context.read<ExploreCubit>().isLoading
                            ? SizedBox(
                                height: 250.h,
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : const SizedBox.shrink();
                      }
                      return BookSingleItemWithImageAndTitle(
                        book: books[index],
                      );
                    },
                    separatorBuilder: (context, index) => horizontalSpace(10),
                    itemCount: books.length + 1,
                  );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
