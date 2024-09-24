import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;

  const ExpandableText({required this.text, required this.maxLines, super.key});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.text,
          style: AppStyles.font16WhiteMedium,
          maxLines: isExpanded ? null : widget.maxLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        if (!isExpanded)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = true;
              });
            },
            child: Text(
              'Show More',
              style: AppStyles.font16BlueMedium.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: AppColors.mainBlue,
              ),
            ),
          ),
      ],
    );
  }
}