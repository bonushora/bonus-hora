import 'package:equatable/equatable.dart';

import '../enums/capability.dart';
import '../enums/profile_type.dart';
import '../enums/user_role.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final UserRole role;
  final ProfileType profileType;
  final List<Capability> capabilities;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.profileType,
    required this.capabilities,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        role,
        profileType,
        capabilities,
      ];
}
