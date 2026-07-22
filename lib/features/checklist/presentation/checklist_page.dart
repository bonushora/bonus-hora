import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../service_completion/data/mock_service_completion.dart';
import '../../service_completion/presentation/service_completion_page.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Protocolo de Qualidade',
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
              height: AppSpacing.xl,
            ),

            const _ChecklistItem(
              icon: Icons.check_circle,
              color: AppColors.success,
              text: 'Prestador chegou ao local',
            ),

            const _ChecklistItem(
              icon: Icons.check_circle,
              color: AppColors.success,
              text: 'Serviço iniciado',
            ),

            const _ChecklistItem(
              icon: Icons.radio_button_unchecked,
              color: Colors.grey,
              text: 'Serviço concluído',
            ),

            const _ChecklistItem(
              icon: Icons.radio_button_unchecked,
              color: Colors.grey,
              text: 'Cliente validou execução',
            ),

            const _ChecklistItem(
              icon: Icons.radio_button_unchecked,
              color: Colors.grey,
              text: 'Evidências registradas',
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ServiceCompletionPage(
                            completion:
                                MockServiceCompletion.completed,
                          ),
                    ),
                  );
                },

                child: const Text(
                  'Finalizar etapa',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _ChecklistItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _ChecklistItem({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: AppSpacing.md,
      ),

      padding: const EdgeInsets.all(
        AppSpacing.md,
      ),

      decoration: BoxDecoration(
        color: AppColors.card,

        borderRadius:
            BorderRadius.circular(
          AppRadius.lg,
        ),

        border: Border.all(
          color: AppColors.border,
        ),
      ),

      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),

          const SizedBox(
            width: AppSpacing.md,
          ),

          Expanded(
            child: Text(
              text,
              style:
                  AppText.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
