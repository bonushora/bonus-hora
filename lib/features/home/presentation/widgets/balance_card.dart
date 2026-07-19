import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.xl),
        gradient: const LinearGradient(
          colors: [
            AppColors.balanceGradientStart,
            AppColors.balanceGradientEnd,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Carteira BônusHora',
            style: AppText.textTheme.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Text(
            '120 BH',
            style: AppText.textTheme.displayLarge?.copyWith(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            'Saldo disponível',
            style: AppText.textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.white,
                size: 20,
              ),

              const SizedBox(width: AppSpacing.sm),

              Text(
                'Reputação 5.0',
                style: AppText.textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
