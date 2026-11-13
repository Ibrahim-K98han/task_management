import 'package:flutter/material.dart';
import 'package:task_management/core/app_colors.dart';

class FilterBtn extends StatelessWidget {
  const FilterBtn({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : Colors.white,
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(
              color: isSelected ? AppColors.primary : Colors.grey,
              width: 1.0,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
