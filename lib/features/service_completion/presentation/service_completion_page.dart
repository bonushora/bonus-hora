import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../service_evaluation/presentation/service_evaluation_page.dart';

class ServiceCompletionPage extends StatelessWidget {
  const ServiceCompletionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Protocolo concluído',
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
            Center(
              child: CircleAvatar(
                radius: 36,

                backgroundColor:
                    AppColors.success,

                child: const Icon(
                  Icons.verified,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Text(
              'Serviço concluído com sucesso!',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.md,
            ),

            Text(
              'A execução foi validada pelo Protocolo de Qualidade BônusHora.',
              style:
                  AppText.textTheme.bodyLarge,
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Container(
              width: double.infinity,

              padding:
                  const EdgeInsets.all(
                AppSpacing.lg,
              ),

              decoration: BoxDecoration(
                color:
                    AppColors.card,

                borderRadius:
                    BorderRadius.circular(
                  AppRadius.xl,
                ),

                border: Border.all(
                  color:
                      AppColors.border,
                ),
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [
                  Text(
                    'Prestação #000124',
                    style:
                        AppText.textTheme.titleLarge,
                  ),

                  const SizedBox(
                    height: AppSpacing.md,
                  ),

                  const Text(
                    'Qualidade: 95%',
                  ),

                  const SizedBox(
                    height: AppSpacing.sm,
                  ),

                  Text(
                    '💎 +5 BH gerados',
                    style:
                        AppText.textTheme.titleMedium,
                  ),
                ],
              ),
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
                          const ServiceEvaluationPage(),
                    ),
                  );
                },

                child: const Text(
                  'Ir para Central da Verdade',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
