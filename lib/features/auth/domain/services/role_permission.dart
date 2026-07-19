import '../entities/user.dart';
import '../enums/capability.dart';
import '../enums/user_role.dart';

class RolePermission {
  static List<Capability> capabilitiesFor(UserRole role) {
    switch (role) {
      case UserRole.superAdmin:
        return Capability.values;

      case UserRole.admin:
        return [
          Capability.requestService,
          Capability.offerService,
          Capability.receiveBonusHour,
          Capability.buildReputation,
        ];

      case UserRole.bonusHoraUser:
        return [
          Capability.requestService,
          Capability.offerService,
          Capability.receiveBonusHour,
          Capability.buildReputation,
        ];
    }
  }

  static bool can(
    User user,
    Capability capability,
  ) {
    return capabilitiesFor(user.role)
        .contains(capability);
  }
}
