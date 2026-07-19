import 'package:flutter/material.dart';

import '../../../features/auth/domain/enums/capability.dart';
import '../../../features/auth/domain/enums/profile_type.dart';

import '../../../features/home/presentation/home_page.dart';
import '../../../features/opportunities/presentation/opportunities_page.dart';
import '../../../features/profile/presentation/profile_page.dart';
import '../../../features/service_offer/presentation/service_offer_page.dart';
import '../../../features/service_request/presentation/service_request_page.dart';
import '../../../features/wallet/presentation/wallet_page.dart';

import '../app_navigation_item.dart';

class AppNavigationCatalog {
  static List<AppNavigationItem> get items => [

        const AppNavigationItem(
          label: 'Home',
          icon: Icons.home_outlined,
          selectedIcon: Icons.home,
          page: HomePage(),
        ),

        const AppNavigationItem(
          label: 'Solicitações',
          icon: Icons.assignment_outlined,
          selectedIcon: Icons.assignment,
          page: ServiceRequestPage(),
          requiredCapability:
              Capability.requestService,
          allowedProfiles: [
            ProfileType.client,
            ProfileType.clientProvider,
          ],
        ),

        const AppNavigationItem(
          label: 'Oportunidades',
          icon: Icons.search_outlined,
          selectedIcon: Icons.search,
          page: OpportunitiesPage(),
          requiredCapability:
              Capability.offerService,
          allowedProfiles: [
            ProfileType.provider,
            ProfileType.clientProvider,
          ],
        ),

        const AppNavigationItem(
          label: 'Serviços',
          icon: Icons.work_outline,
          selectedIcon: Icons.work,
          page: ServiceOfferPage(),
          requiredCapability:
              Capability.offerService,
          allowedProfiles: [
            ProfileType.provider,
            ProfileType.clientProvider,
          ],
        ),

        const AppNavigationItem(
          label: 'Carteira',
          icon: Icons.account_balance_wallet_outlined,
          selectedIcon: Icons.account_balance_wallet,
          page: WalletPage(),
        ),

        const AppNavigationItem(
          label: 'Perfil',
          icon: Icons.person_outline,
          selectedIcon: Icons.person,
          page: ProfilePage(),
        ),
      ];
}
