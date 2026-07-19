import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transações'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Histórico de Transações',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSpacing.md),
            Text(
              'Aqui serão exibidas todas as movimentações do ledger do usuário, incluindo solicitações, confirmações, emissões de BH e avaliações.',
            ),
          ],
        ),
      ),
    );
  }
}
