import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text.dart';

import '../../domain/entities/opportunity.dart';

class OpportunityCard extends StatelessWidget {
  final Opportunity opportunity;
  final VoidCallback? onTap;

  const OpportunityCard({
    super.key,
    required this.opportunity,
    this.onTap,
  });

  IconData _categoryIcon(String category) {
    switch (category) {
      case 'Tecnologia':
        return Icons.computer;

      case 'Educação':
        return Icons.school;

      case 'Reparos':
        return Icons.handyman;

      default:
        return Icons.build;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Row(
            children: [

              CircleAvatar(
                backgroundColor:
                    AppColors.primary.withValues(
                  alpha: 0.12,
                ),

                child: Icon(
                  _categoryIcon(
                    opportunity.category,
                  ),

                  color:
                      AppColors.primary,
                ),
              ),

              const SizedBox(
                width: AppSpacing.sm,
              ),

              Expanded(
                child: Text(
                  opportunity.title,
                  style:
                      AppText.textTheme.titleMedium,
                ),
              ),

            ],
          ),


          const SizedBox(
            height: AppSpacing.md,
          ),


          Text(
            opportunity.provider,
            style:
                AppText.textTheme.bodyLarge,
          ),


          const SizedBox(
            height: AppSpacing.xs,
          ),


          Row(
            children: [

              const Icon(
                Icons.star,
                size: 18,
                color: Colors.amber,
              ),

              const SizedBox(
                width: AppSpacing.xs,
              ),

              Text(
                opportunity.rating.toString(),
              ),


              const SizedBox(
                width: AppSpacing.md,
              ),


              const Icon(
                Icons.location_on_outlined,
                size: 18,
              ),

              const SizedBox(
                width: AppSpacing.xs,
              ),

              Text(
                opportunity.location,
              ),

            ],
          ),


          const SizedBox(
            height: AppSpacing.md,
          ),


          Text(
            opportunity.description,
            style:
                AppText.textTheme.bodyMedium,
          ),


          const SizedBox(
            height: AppSpacing.md,
          ),


          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              Text(
                '⏱ ${opportunity.deadline}',
              ),


              Text(
                '💎 ${opportunity.reward} BH',
                style:
                    AppText.textTheme.titleMedium,
              ),

            ],
          ),


          const SizedBox(
            height: AppSpacing.md,
          ),


          SizedBox(
            width: double.infinity,

            child: OutlinedButton(
              onPressed: onTap,

              child: const Text(
                'Ver oportunidade',
              ),
            ),
          ),

        ],
      ),
    );
  }
}
