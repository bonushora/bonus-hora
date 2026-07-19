import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../opportunities/domain/entities/opportunity.dart';
import 'request_success_page.dart';

class CreateServiceRequestPage extends StatelessWidget {
  final Opportunity opportunity;

  const CreateServiceRequestPage({
    super.key,
    required this.opportunity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Solicitar serviço',
        ),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(
          AppSpacing.lg,
        ),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(
              'Resumo do serviço',
              style:
                  AppText.textTheme.headlineMedium,
            ),


            const SizedBox(
              height: AppSpacing.lg,
            ),


            Container(
              padding:
                  const EdgeInsets.all(
                AppSpacing.lg,
              ),

              decoration: BoxDecoration(
                color: AppColors.card,

                borderRadius:
                    BorderRadius.circular(
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
                    opportunity.title,
                    style:
                        AppText.textTheme.titleLarge,
                  ),

                  const SizedBox(
                    height: AppSpacing.sm,
                  ),

                  Text(
                    opportunity.provider,
                  ),

                  Text(
                    opportunity.location,
                  ),

                  const SizedBox(
                    height: AppSpacing.md,
                  ),

                  Text(
                    '💎 ${opportunity.reward} BH',
                    style:
                        AppText.textTheme.titleMedium,
                  ),

                ],
              ),
            ),


            const SizedBox(
              height: AppSpacing.xl,
            ),


            Text(
              'Mensagem ao prestador',
              style:
                  AppText.textTheme.titleLarge,
            ),


            const SizedBox(
              height: AppSpacing.md,
            ),


            const TextField(
              maxLines: 4,

              decoration: InputDecoration(
                hintText:
                    'Explique o que você precisa...',
                border:
                    OutlineInputBorder(),
              ),
            ),


            const SizedBox(
              height: AppSpacing.xl,
            ),


            SizedBox(
              width: double.infinity,

              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          RequestSuccessPage(
                        provider: opportunity.provider,
                        reward: opportunity.reward,
                      ),
                    ),
                  );
                },

                child: const Text(
                  'Confirmar solicitação',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
