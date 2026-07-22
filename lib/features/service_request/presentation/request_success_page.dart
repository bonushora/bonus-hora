import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import 'service_accepted_page.dart';

class RequestSuccessPage extends StatelessWidget {
  final String provider;
  final int reward;

  const RequestSuccessPage({
    super.key,
    required this.provider,
    required this.reward,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Solicitação enviada',
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
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            Text(
              'Solicitação enviada com sucesso!',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.md,
            ),

            Text(
              'O prestador $provider foi notificado e poderá aceitar o serviço.',
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

              child: Text(
                '💎 $reward BH',
                style:
                    AppText.textTheme.titleLarge,
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
                          ServiceAcceptedPage(
                        provider: provider,
                        reward: reward,
                      ),
                    ),
                  );
                },

                child: const Text(
                  'Ver aceite do prestador',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
