import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../checklist/presentation/checklist_page.dart';

class ServiceInProgressPage extends StatelessWidget {
  const ServiceInProgressPage({
    super.key,
  });

  Widget _timelineItem({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.lg,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
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
                  style: AppText.textTheme.titleMedium,
                ),

                const SizedBox(
                  height: AppSpacing.xs,
                ),

                Text(
                  subtitle,
                  style: AppText.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Serviço em andamento',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(
          AppSpacing.lg,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(
              'Prestação #000124',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.md,
            ),

            Text(
              'O atendimento está sendo executado.',
              style:
                  AppText.textTheme.bodyLarge,
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(
                AppSpacing.lg,
              ),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(
                  AppRadius.xl,
                ),
                border: Border.all(
                  color: AppColors.border,
                ),
              ),
              child: Column(
                children: [

                  _timelineItem(
                    icon: Icons.check_circle,
                    color: AppColors.success,
                    title: 'Prestador chegou',
                    subtitle: 'Local confirmado',
                  ),

                  _timelineItem(
                    icon: Icons.home_repair_service,
                    color: AppColors.warning,
                    title: 'Serviço em execução',
                    subtitle: 'Atendimento iniciado',
                  ),

                  _timelineItem(
                    icon: Icons.assignment_turned_in,
                    color: Colors.grey,
                    title: 'Checklist',
                    subtitle: 'Será liberado após a execução',
                  ),

                ],
              ),
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Text(
              'Progresso',
              style:
                  AppText.textTheme.titleLarge,
            ),

            const SizedBox(
              height: AppSpacing.md,
            ),

            const LinearProgressIndicator(
              value: 0.65,
            ),

            const SizedBox(
              height: AppSpacing.sm,
            ),

            Text(
              '65% concluído',
              style:
                  AppText.textTheme.bodyMedium,
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const ChecklistPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward,
                ),
                label: const Text(
                  'Abrir Checklist',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
