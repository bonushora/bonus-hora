import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Ações rápidas',
          style: AppText.textTheme.titleLarge,
        ),

        const SizedBox(
          height: AppSpacing.md,
        ),

        Row(
          children: [

            Expanded(
              child: _ActionCard(
                icon: Icons.search,
                title: 'Solicitar\nServiço',
                color: AppColors.secondary,
                onTap: () {},
              ),
            ),

            const SizedBox(
              width: AppSpacing.md,
            ),

            Expanded(
              child: _ActionCard(
                icon: Icons.handyman,
                title: 'Oferecer\nServiço',
                color: AppColors.primary,
                onTap: () {},
              ),
            ),

          ],
        ),
      ],
    );
  }
}


class _ActionCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;


  const _ActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(
        AppRadius.lg,
      ),

      child: Container(
        padding: const EdgeInsets.all(
          AppSpacing.md,
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

        child: Column(
          children: [

            CircleAvatar(
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: AppSpacing.sm,
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: AppText.textTheme.labelLarge,
            ),

          ],
        ),
      ),
    );
  }
}
