import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class BookDescriptionPart extends StatelessWidget {
  const BookDescriptionPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Books Description',
          style: AppStyles.font24BlueBold,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        verticalSpace(10),
        const ExpandableText(
          text:
              'Lorem ipsum dolor sit amet, consectetur adipiscing onsectetur adipiscing elit.Sed ut puruonsectetur adipiscing elit.Sed ut puruonsectetur adipiscing elit.Sed ut puruonsectetur adipiscing elit.Sed ut puru onsectetur adipiscing elit.Sed ut puruonsectetur adipiscing elit.Sed ut puruonsectetur adipiscing elit.Sed ut puru elit.Sed ut purus Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed ut purus Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed ut purus Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed ut purus',
          maxLines: 7,
        ),
      ],
    );
  }
}
