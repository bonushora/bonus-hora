import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';

class SearchBarCard extends StatelessWidget {
  const SearchBarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),

      decoration: BoxDecoration(
        color: AppColors.card,

        borderRadius: BorderRadius.circular(
          AppRadius.lg,
        ),

        border: Border.all(
          color: AppColors.border,
        ),
      ),

      child: const Row(
        children: [

          Icon(
            Icons.search,
          ),

          SizedBox(
            width: AppSpacing.sm,
          ),

          Expanded(
            child: Text(
              'Buscar oportunidades',
            ),
          ),

        ],
      ),
    );
  }
}
