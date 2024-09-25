import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class BookKeyAndValuePairs extends StatelessWidget {
  final String pair;
  final List<String> value;

  const BookKeyAndValuePairs({
    super.key,
    required this.pair,
    required this.value,
  });

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
            children: value
                .asMap()
                .entries
                .map((entry) {
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