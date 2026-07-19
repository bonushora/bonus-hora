import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import 'service_offer_success_page.dart';

class CreateServiceOfferPage extends StatelessWidget {
  const CreateServiceOfferPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Novo serviço',
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
              'Publicar serviço',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Categoria',
              ),
            ),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Descrição',
              ),
            ),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Localização',
              ),
            ),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Recompensa (BH)',
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
                          const ServiceOfferSuccessPage(),
                    ),
                  );
                },

                child: const Text(
                  'Publicar serviço',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
