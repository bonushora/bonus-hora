import '../../domain/entities/user.dart';
import '../../domain/enums/capability.dart';
import '../../domain/enums/profile_type.dart';
import '../../domain/enums/user_role.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    required super.profileType,
    required super.capabilities,
  });

  factory UserModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: UserRole.values.firstWhere(
        (role) =>
            role.name == json['role'],
      ),
      profileType: ProfileType.values.firstWhere(
        (type) =>
            type.name == json['profileType'],
      ),
      capabilities:
          (json['capabilities'] as List<dynamic>)
              .map(
                (item) => Capability.values.firstWhere(
                  (capability) =>
                      capability.name == item,
                ),
              )
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role.name,
      'profileType': profileType.name,
      'capabilities': capabilities
          .map(
            (capability) => capability.name,
          )
          .toList(),
    };
  }
}
