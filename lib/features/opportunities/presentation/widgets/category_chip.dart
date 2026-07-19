import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color: AppColors.primary.withValues(
          alpha: 0.12,
        ),

        borderRadius: BorderRadius.circular(
          AppRadius.pill,
        ),
      ),

      child: Text(
        label,
      ),
    );
  }
}
