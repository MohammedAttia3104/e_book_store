import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';

class FilterButton extends StatefulWidget {
  final String label;
  final String? selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;
  final VoidCallback onClear;

  const FilterButton({
    super.key,
    required this.label,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
    required this.onClear,
  });

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  void didUpdateWidget(covariant FilterButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedValue != widget.selectedValue) {
      setState(() {
        _selectedValue = widget.selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.clear, color: AppColors.mainBlue),
              onPressed: () {
                setState(() {
                  _selectedValue = null;
                });
                widget.onClear();
              },
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: widget.options.map((option) {
            final isSelected = option == _selectedValue;
            return ChoiceChip(
              label: Text(option),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  _selectedValue = selected ? option : null;
                });
                widget.onChanged(_selectedValue);
              },
              selectedColor: AppColors.mainBlue,
              backgroundColor: Colors.grey[200],
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            );
          }).toList(),
        ),
        verticalSpace(10),
      ],
    );
  }
}