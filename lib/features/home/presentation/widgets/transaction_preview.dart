import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text.dart';

class TransactionPreview extends StatelessWidget {
  const TransactionPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          'Atividades recentes',
          style: AppText.textTheme.titleLarge,
        ),

        const SizedBox(
          height: AppSpacing.md,
        ),

        _TransactionItem(
          title: 'Serviço solicitado',
          subtitle: 'Aguardando aceite do prestador',
          color: AppColors.warning,
          icon: Icons.schedule,
        ),

        const SizedBox(
          height: AppSpacing.sm,
        ),

        _TransactionItem(
          title: 'Serviço confirmado',
          subtitle: '+20 BH recebido',
          color: AppColors.success,
          icon: Icons.check_circle,
        ),

      ],
    );
  }
}


class _TransactionItem extends StatelessWidget {

  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;


  const _TransactionItem({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
  });


  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(
        AppSpacing.md,
      ),

      decoration: BoxDecoration(

        color: AppColors.card,

        borderRadius: BorderRadius.circular(
          AppRadius.md,
        ),

        border: Border.all(
          color: AppColors.border,
        ),

      ),

      child: Row(

        children: [

          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          const SizedBox(
            width: AppSpacing.md,
          ),

          Expanded(
            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style:
                      AppText.textTheme.bodyLarge,
                ),

                Text(
                  subtitle,
                  style:
                      AppText.textTheme.bodyMedium
                          ?.copyWith(
                            color:
                                AppColors.textSecondary,
                          ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
