import 'dart:io';
import 'package:dio/dio.dart';
import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../controllers/book_cubit.dart';

class BookShareButton extends StatelessWidget {
  const BookShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        final isDarkTheme = themeState is AppThemeDarkState;
        return BlocBuilder<BookCubit, BookState>(
          builder: (context, bookState) {
            return bookState.maybeWhen(
              bookDetailsSuccess: (book) {
                return IconButton(
                  icon: SvgPicture.asset(
                    isDarkTheme ? Assets.svgsWhiteShare : Assets.svgsBlackShare,
                  ),
                  onPressed: () async {
                    final bookImageUrl = book.volumeInfo?.imageLinks?.thumbnail;
                    if (bookImageUrl != null) {
                      try {
                        await _shareBookContent(bookImageUrl, book);
                      } catch (e) {
                        debugPrint('Error sharing book: $e');
                        _handleShareFailureState(context, e);
                      }
                    }
                  },
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }

  void _handleShareFailureState(BuildContext context, Object e) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        content: Text('Error sharing book: $e'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _shareBookContent(
      String bookImageUrl, BookItemModel book) async {
    File filePath = await _downloadAndSaveImageLocal(bookImageUrl);

    final String content = '''
Check out ${book.volumeInfo?.title} book on our E-Book Store:
    ${book.volumeInfo?.previewLink}
    ''';

    Share.shareXFiles(
      [XFile(filePath.path)],
      text: content,
      subject: book.volumeInfo?.title,
    );
  }

  Future<File> _downloadAndSaveImageLocal(String bookImageUrl) async {
    final dio = Dio();
    final response = await dio.get(
      bookImageUrl,
      options: Options(responseType: ResponseType.bytes),
    );
    final documentDirectory = await getApplicationDocumentsDirectory();
    final filePath = File('${documentDirectory.path}/thumbnail.png');
    await filePath.writeAsBytes(response.data);
    return filePath;
  }
}
