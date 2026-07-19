import 'package:flutter/material.dart';

import '../../features/auth/presentation/session/user_session.dart';

import '../navigation/catalog/app_navigation_catalog.dart';
import '../navigation/resolvers/navigation_resolver.dart';
import '../navigation/app_navigation_item.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  late final List<AppNavigationItem> _navigationItems =
      NavigationResolver.resolve(
    UserSession.currentUser,
    AppNavigationCatalog.items,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _navigationItems
            .map(
              (item) => item.page,
            )
            .toList(),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,

        destinations: _navigationItems
            .map(
              (item) => NavigationDestination(
                icon: Icon(
                  item.icon,
                ),
                selectedIcon: Icon(
                  item.selectedIcon,
                ),
                label: item.label,
              ),
            )
            .toList(),

        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
