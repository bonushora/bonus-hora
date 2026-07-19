import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../data/mock_opportunities.dart';

import 'widgets/search_bar_card.dart';
import 'widgets/category_chip.dart';
import 'widgets/opportunity_card.dart';
import 'opportunity_detail_page.dart';

class OpportunitiesPage extends StatelessWidget {
  const OpportunitiesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final opportunities = MockOpportunities.items;

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Oportunidades',
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
              'Encontre oportunidades',
              style:
                  AppText.textTheme.headlineMedium,
            ),


            const SizedBox(
              height: AppSpacing.lg,
            ),


            const SearchBarCard(),


            const SizedBox(
              height: AppSpacing.lg,
            ),


            Text(
              'Categorias',
              style:
                  AppText.textTheme.titleLarge,
            ),


            const SizedBox(
              height: AppSpacing.md,
            ),


            const Wrap(

              spacing: 8,
              runSpacing: 8,

              children: [

                CategoryChip(
                  label: 'Tecnologia',
                ),

                CategoryChip(
                  label: 'Reparos',
                ),

                CategoryChip(
                  label: 'Educação',
                ),

                CategoryChip(
                  label: 'Serviços',
                ),

              ],
            ),


            const SizedBox(
              height: AppSpacing.xl,
            ),


            Text(
              'Disponíveis para você',
              style:
                  AppText.textTheme.titleLarge,
            ),


            const SizedBox(
              height: AppSpacing.md,
            ),


            ...opportunities.map(
              (opportunity) => Padding(
                padding: const EdgeInsets.only(
                  bottom: AppSpacing.md,
                ),

                child: OpportunityCard(
                  opportunity: opportunity,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OpportunityDetailPage(
                          opportunity: opportunity,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
