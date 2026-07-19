import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../domain/entities/opportunity.dart';
import '../../service_request/presentation/create_service_request_page.dart';

class OpportunityDetailPage extends StatelessWidget {
  final Opportunity opportunity;

  const OpportunityDetailPage({
    super.key,
    required this.opportunity,
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
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Detalhes da oportunidade',
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

            Container(
              padding: const EdgeInsets.all(
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
                    height: AppSpacing.md,
                  ),


                  Text(
                    opportunity.title,
                    style:
                        AppText.textTheme.headlineMedium,
                  ),


                  const SizedBox(
                    height: AppSpacing.sm,
                  ),


                  Text(
                    opportunity.provider,
                    style:
                        AppText.textTheme.bodyLarge,
                  ),


                  const SizedBox(
                    height: AppSpacing.md,
                  ),


                  Row(
                    children: [

                      const Icon(
                        Icons.star,
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
                    height: AppSpacing.lg,
                  ),


                  Text(
                    opportunity.description,
                    style:
                        AppText.textTheme.bodyLarge,
                  ),


                  const SizedBox(
                    height: AppSpacing.lg,
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
                            AppText.textTheme.titleLarge,
                      ),

                    ],
                  ),

                ],
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
                          CreateServiceRequestPage(
                        opportunity: opportunity,
                      ),
                    ),
                  );
                },

                child: const Text(
                  'Solicitar serviço',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
