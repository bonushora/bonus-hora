import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

class ServiceOfferSuccessPage extends StatelessWidget {
  const ServiceOfferSuccessPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Serviço publicado',
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
              'Serviço publicado com sucesso!',
              style:
                  AppText.textTheme.headlineMedium,
            ),


            const SizedBox(
              height: AppSpacing.md,
            ),


            Text(
              'Seu serviço agora está disponível '
              'para usuários BônusHora interessados.',
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
                'Status: Publicado',
                style:
                    AppText.textTheme.titleLarge,
              ),
            ),


            const Spacer(),


            SizedBox(
              width: double.infinity,

              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text(
                  'Voltar',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
