import 'package:e_book_store/features/book/presentation/widgets/book_screen_app_bar.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BookScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // BookCoverImage(),
            
            // BookTitle(),
            // BookAuthor(),
            // BookDescription(),
            // BookLoveButton(),
            // BookShareButton(),
          ],
        ),
      ),
    );
  }
}
