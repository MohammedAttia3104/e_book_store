import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class BookDetailsDataPart extends StatelessWidget {
  const BookDetailsDataPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Details',
          style: AppStyles.font24BlueBold,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        verticalSpace(10),
        const BookKeyAndValueData(
          pair: 'Publisher: ',
          value: ['Simon & Schuster'],
        ),
        verticalSpace(5),
        const BookKeyAndValueData(
          pair: 'publishedDate: ',
          value: ['20-10-2002'],
        ),
        verticalSpace(5),
        const BookKeyAndValueData(
          pair: 'Pages-Number: ',
          value: ['320'],
        ),
        verticalSpace(5),
        const BookKeyAndValueData(
          pair: 'Dimensions: ',
          value: ['320 x 240 x 20 inches'],
        ),
        verticalSpace(5),
        const BookKeyAndValueData(
          pair: 'Author (s): ',
          value: ['Laura Dave', 'John Doe', 'Jane Doe'],
        ),
      ],
    );
  }
}

class BookKeyAndValueData extends StatelessWidget {
  final String pair;
  final List<String> value;

  const BookKeyAndValueData(
      {super.key, required this.pair, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          pair,
          style: AppStyles.font16GrayMedium,
        ),
        RichText(
          text: TextSpan(
            children: value.asMap().entries.map((entry) {
              return TextSpan(
                text: entry.value,
                style: AppStyles.font16BlueMedium,
                children: [
                  if (entry.key != value.length - 1)
                    const TextSpan(text: ' - '),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
