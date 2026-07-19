import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

class BonusHoraApp extends StatelessWidget {
  const BonusHoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BonusHora',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
