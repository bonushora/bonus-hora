import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notificações',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSpacing.md),
            Text(
              'Aqui serão exibidas notificações sobre solicitações, confirmações, avaliações, mensagens, recompensas e avisos importantes do sistema.',
            ),
          ],
        ),
      ),
    );
  }
}
