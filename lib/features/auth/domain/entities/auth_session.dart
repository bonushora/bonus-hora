import 'package:equatable/equatable.dart';

import 'user.dart';

class AuthSession extends Equatable {
  final User user;

  const AuthSession({
    required this.user,
  });

  @override
  List<Object?> get props => [
        user,
      ];
}
