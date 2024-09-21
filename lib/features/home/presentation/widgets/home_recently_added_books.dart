import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/home_state.dart';

class HomeRecentlyAddedBooks extends StatelessWidget {
  const HomeRecentlyAddedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is FreeBookLoadingState || current is FreeBookLoadedState || current is FreeBookErrorState,
      builder: (context, state) {
        return state.when(
          freeBookLoadingState: () {
            return const Center(child: CircularProgressIndicator());
          },
          freeBookLoadedState: (books) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Text(
                  'Recently Added',
                  style: AppStyles.font24BlackBold,
                ),
                verticalSpace(20),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return RecentlyAddedBookItem(
                      itemImage: books.items?[index].volumeInfo.imageLinks.thumbnail,
                      itemTitle: books.items?[index].volumeInfo.title,
                      itemAuthor: books.items?[index].volumeInfo.authors?.first,
                      itemDescription: books.items?[index].volumeInfo.description,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return verticalSpace(15);
                  },
                  itemCount: books.items?.length ?? 0,
                ),
              ],
            );
          },
          freeBookErrorState: (message) {
            return Center(
              child: Text(message),
            );
          },
          initial: () {
            return const Center(
              child: Text('No data'),
            );
          },
        );
      },
    );
  }
}

class RecentlyAddedBookItem extends StatelessWidget {
  final String? itemImage;
  final String? itemTitle;
  final String? itemAuthor;
  final String? itemDescription;

  const RecentlyAddedBookItem({
    super.key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemAuthor,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            height: 150.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: FancyShimmerImage(
              imageUrl: itemImage ?? '',
              errorWidget: Image.network('Network image goes here '),
              shimmerBaseColor: Colors.greenAccent,
              shimmerHighlightColor: Colors.grey,
              shimmerBackColor: Colors.greenAccent,
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemTitle ?? '',
                  style: AppStyles.font20DarkBlueMedium,
                ),
                verticalSpace(5),
                Text(
                  itemAuthor ?? '',
                  style: AppStyles.font20DarkBlueMedium,
                ),
                verticalSpace(5),
                Text(
                  itemDescription ?? '',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.font20DarkBlueMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}