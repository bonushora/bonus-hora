import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';

import 'widgets/balance_card.dart';
import 'widgets/quick_actions.dart';
import 'widgets/transaction_preview.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'BônusHora',
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
              'Olá, usuário 👋',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium,
            ),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            const BalanceCard(),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            const QuickActions(),

            const SizedBox(
              height: AppSpacing.xl,
            ),

            const TransactionPreview(),

          ],
        ),
      ),
    );
  }
}
