import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';

import '../../auth/domain/enums/capability.dart';
import '../../auth/presentation/session/user_session.dart';

import 'create_service_offer_page.dart';

class ServiceOfferPage extends StatelessWidget {
  const ServiceOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    final canOfferService =
        UserSession.currentUser.capabilities.contains(
      Capability.offerService,
    );

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Meus Serviços',
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
              'Área do Prestador',
              style:
                  AppText.textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            Text(
              'Serviços publicados',
              style:
                  AppText.textTheme.titleLarge,
            ),

            const SizedBox(
              height: AppSpacing.md,
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
                    '🔧 Instalação elétrica',
                    style:
                        AppText.textTheme.titleLarge,
                  ),

                  const SizedBox(
                    height: AppSpacing.sm,
                  ),

                  Text(
                    'Categoria: Reparos',
                    style:
                        AppText.textTheme.bodyMedium,
                  ),

                  const SizedBox(
                    height: AppSpacing.sm,
                  ),

                  Text(
                    '💎 3 BH',
                    style:
                        AppText.textTheme.titleMedium,
                  ),

                  const SizedBox(
                    height: AppSpacing.sm,
                  ),

                  Text(
                    'Status: Publicado',
                    style:
                        AppText.textTheme.bodyMedium,
                  ),

                  const SizedBox(
                    height: AppSpacing.md,
                  ),

                  SizedBox(
                    width:
                        double.infinity,

                    child:
                        OutlinedButton(
                      onPressed: () {},

                      child:
                          const Text(
                        'Editar serviço',
                      ),
                    ),
                  ),

                ],
              ),
            ),

            if (canOfferService) ...[

              const SizedBox(
                height:
                    AppSpacing.xl,
              ),

              SizedBox(
                width:
                    double.infinity,

                child:
                    FilledButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const CreateServiceOfferPage(),
                      ),
                    );
                  },

                  child:
                      const Text(
                    'Criar novo serviço',
                  ),
                ),
              ),

            ],

          ],
        ),
      ),
    );
  }
}
