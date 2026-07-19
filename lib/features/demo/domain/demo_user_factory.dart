import '../../auth/domain/entities/user.dart';
import '../../auth/domain/enums/capability.dart';
import '../../auth/domain/enums/profile_type.dart';
import '../../auth/domain/enums/user_role.dart';

import 'demo_profile.dart';

class DemoUserFactory {
  static User create(
    DemoProfile profile,
  ) {
    switch (profile) {
      case DemoProfile.client:
        return const User(
          id: 'demo-client',
          name: 'Cliente Demonstração',
          email: 'cliente@bonushora.com.br',
          role: UserRole.bonusHoraUser,
          profileType: ProfileType.client,
          capabilities: [
            Capability.requestService,
            Capability.receiveBonusHour,
          ],
        );

      case DemoProfile.provider:
        return const User(
          id: 'demo-provider',
          name: 'Prestador Demonstração',
          email: 'prestador@bonushora.com.br',
          role: UserRole.bonusHoraUser,
          profileType: ProfileType.provider,
          capabilities: [
            Capability.offerService,
            Capability.receiveBonusHour,
            Capability.buildReputation,
          ],
        );

      case DemoProfile.clientProvider:
        return const User(
          id: 'demo-client-provider',
          name: 'Cliente + Prestador Demonstração',
          email: 'ecossistema@bonushora.com.br',
          role: UserRole.bonusHoraUser,
          profileType: ProfileType.clientProvider,
          capabilities: [
            Capability.requestService,
            Capability.offerService,
            Capability.receiveBonusHour,
            Capability.buildReputation,
          ],
        );
    }
  }
}
