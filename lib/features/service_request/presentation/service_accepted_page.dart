import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../service_progress/presentation/service_in_progress_page.dart';

class ServiceAcceptedPage extends StatelessWidget {
  final String provider;
  final int reward;

  const ServiceAcceptedPage({
    super.key,
    required this.provider,
    required this.reward,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Serviço aceito',
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
                radius: 40,
                backgroundColor: AppColors.success,
                child: const Icon(
                  Icons.handshake,
                  color: Colors.white,
                  size: 44,
                ),
              ),
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Text(
              'O prestador aceitou sua solicitação',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.md,
            ),

            Text(
              '$provider confirmou o atendimento.',
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
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    provider,
                    style:
                        AppText.textTheme.titleLarge,
                  ),

                  const SizedBox(
                    height: AppSpacing.md,
                  ),

                  const Text(
                    '⭐ 4,9',
                  ),

                  const Text(
                    '📍 Salvador - BA',
                  ),

                  const Text(
                    '🕒 Hoje às 14:30',
                  ),

                  const SizedBox(
                    height: AppSpacing.lg,
                  ),

                  Text(
                    '💎 $reward BH',
                    style:
                        AppText.textTheme.titleLarge,
                  ),
                ],
              ),
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
                          const ServiceInProgressPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                ),
                label: const Text(
                  'Iniciar acompanhamento',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
