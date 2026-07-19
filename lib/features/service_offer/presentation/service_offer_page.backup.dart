import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';

class ServiceOfferPage extends StatelessWidget {
  const ServiceOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oferecer Serviço'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oferecer Serviço',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSpacing.md),
            Text(
              'Esta tela será responsável pelo cadastro e publicação de serviços disponíveis no BônusHora.',
            ),
          ],
        ),
      ),
    );
  }
}
