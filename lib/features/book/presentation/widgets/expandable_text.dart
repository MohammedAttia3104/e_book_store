import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(
          text: widget.text,
          style: AppStyles.font16SecondaryMedium,
        );

        final tp = TextPainter(
          text: span,
          maxLines: widget.maxLines,
          textDirection: TextDirection.ltr,
        );

        tp.layout(maxWidth: constraints.maxWidth);

        if (tp.didExceedMaxLines && !isExpanded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              HtmlWidget(
                widget.text,
                textStyle: AppStyles.font16SecondaryMedium,
                customStylesBuilder: (element) {
                  return {
                    'max-lines': '${widget.maxLines}',
                    'overflow': 'ellipsis',
                  };
                },
              ),
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
        } else {
          return HtmlWidget(
            widget.text,
            textStyle: AppStyles.font16SecondaryMedium,
          );
        }
      },
    );
  }
}