import 'package:flutter/material.dart';

import '../../features/auth/domain/enums/capability.dart';
import '../../features/auth/domain/enums/profile_type.dart';

class AppNavigationItem {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final Widget page;
  final Capability? requiredCapability;
  final List<ProfileType>? allowedProfiles;

  const AppNavigationItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.page,
    this.requiredCapability,
    this.allowedProfiles,
  });
}
