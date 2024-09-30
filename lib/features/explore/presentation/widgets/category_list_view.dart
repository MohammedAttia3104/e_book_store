import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import '../../../category/presentation/widgets/book_single_item_with_image_and_title.dart';
import '../controllers/explore_cubit.dart';

class CategoryListView extends StatelessWidget {
  final ScrollController scrollController;
  final String category;

  const CategoryListView({
    required this.scrollController,
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreCubit, ExploreState>(
      builder: (context, state) {
        return state.maybeWhen(
          exploreCategorySuccess: (books) {
            return ListView.separated(
              controller: scrollController,
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
    );
  }
}