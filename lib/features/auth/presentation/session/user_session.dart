import '../../domain/entities/user.dart';
import '../../domain/enums/capability.dart';
import '../../domain/enums/profile_type.dart';
import '../../domain/enums/user_role.dart';

class UserSession {
  static User currentUser = const User(
    id: '1',
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
