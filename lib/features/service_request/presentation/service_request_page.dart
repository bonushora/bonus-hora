import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

class ServiceRequestPage extends StatelessWidget {
  const ServiceRequestPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Minhas solicitações',
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
              'Minhas solicitações',
              style:
                  AppText.textTheme.headlineMedium,
            ),


            const SizedBox(
              height: AppSpacing.lg,
            ),


            _RequestCard(
              title: 'Instalação elétrica',
              provider: 'João Silva',
              status: 'Aguardando aceite',
              reward: 3,
              statusColor: AppColors.warning,
            ),


            const SizedBox(
              height: AppSpacing.md,
            ),


            _RequestCard(
              title: 'Aula de matemática',
              provider: 'Maria Souza',
              status: 'Aceito',
              reward: 5,
              statusColor: AppColors.success,
            ),

          ],
        ),
      ),
    );
  }
}


class _RequestCard extends StatelessWidget {

  final String title;
  final String provider;
  final String status;
  final int reward;
  final Color statusColor;


  const _RequestCard({
    required this.title,
    required this.provider,
    required this.status,
    required this.reward,
    required this.statusColor,
  });


  @override
  Widget build(BuildContext context) {

    return Container(

      padding:
          const EdgeInsets.all(
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


      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,


        children: [

          Text(
            title,
            style:
                AppText.textTheme.titleLarge,
          ),


          const SizedBox(
            height: AppSpacing.sm,
          ),


          Text(
            provider,
            style:
                AppText.textTheme.bodyLarge,
          ),


          const SizedBox(
            height: AppSpacing.md,
          ),


          Row(

            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              Container(

                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),


                decoration: BoxDecoration(

                  color:
                      statusColor.withValues(
                    alpha: 0.12,
                  ),


                  borderRadius:
                      BorderRadius.circular(
                    AppRadius.pill,
                  ),

                ),


                child: Text(
                  status,
                ),

              ),


              Text(
                '💎 $reward BH',
                style:
                    AppText.textTheme.titleMedium,
              ),

            ],
          ),

        ],
      ),
    );
  }
}
