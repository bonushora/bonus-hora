import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/demo/presentation/demo_login_page.dart';
import '../shared/widgets/app_shell.dart';

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,

  initialLocation: '/demo',

  routes: <RouteBase>[

    GoRoute(
      path: '/demo',
      name: 'demo',
      pageBuilder: (context, state) =>
          const MaterialPage(
        child: DemoLoginPage(),
      ),
    ),

    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) =>
          const MaterialPage(
        child: AppShell(),
      ),
    ),

  ],
);
