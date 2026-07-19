import 'package:flutter/material.dart';

import '../../features/auth/domain/enums/capability.dart';
import '../../features/auth/presentation/session/user_session.dart';

import '../../features/home/presentation/home_page.dart';
import '../../features/opportunities/presentation/opportunities_page.dart';
import '../../features/wallet/presentation/wallet_page.dart';
import '../../features/profile/presentation/profile_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  bool _hasCapability(
    Capability capability,
  ) {
    return UserSession.currentUser.capabilities
        .contains(capability);
  }

  late final List<Widget> _pages = [
    const HomePage(),
    const OpportunitiesPage(),
    const WalletPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final canOfferService =
        _hasCapability(
      Capability.offerService,
    );

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,

        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: const Icon(Icons.work_outline),
            selectedIcon: const Icon(Icons.work),
            label: canOfferService
                ? 'Serviços'
                : 'Explorar',
          ),

          const NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            selectedIcon: Icon(Icons.account_balance_wallet),
            label: 'Carteira',
          ),

          const NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],

        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
