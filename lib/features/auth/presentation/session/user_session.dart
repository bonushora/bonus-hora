import '../../domain/entities/user.dart';
import '../../domain/enums/capability.dart';
import '../../domain/enums/profile_type.dart';
import '../../domain/enums/user_role.dart';

class UserSession {
  static User currentUser =
      _buildClientProvider();

  static void setClient() {
    currentUser = _buildClient();
  }

  static void setProvider() {
    currentUser = _buildProvider();
  }

  static void setClientProvider() {
    currentUser = _buildClientProvider();
  }


  static User _buildClient() {
    return const User(
      id: '1',
      name: 'Cliente Demonstração',
      email: 'cliente@bonushora.com.br',
      role: UserRole.bonusHoraUser,
      profileType: ProfileType.client,
      capabilities: [
        Capability.requestService,
        Capability.receiveBonusHour,
        Capability.buildReputation,
      ],
    );
  }


  static User _buildProvider() {
    return const User(
      id: '2',
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
  }


  static User _buildClientProvider() {
    return const User(
      id: '3',
      name: 'Usuário Demonstração',
      email: 'usuario@bonushora.com.br',
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
