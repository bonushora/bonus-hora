import '../../../features/auth/domain/entities/user.dart';
import '../app_navigation_item.dart';

class NavigationResolver {
  static List<AppNavigationItem> resolve(
    User user,
    List<AppNavigationItem> availableItems,
  ) {
    return availableItems.where(
      (item) {

        final allowedProfiles =
            item.allowedProfiles;

        if (allowedProfiles != null &&
            !allowedProfiles.contains(
              user.profileType,
            )) {
          return false;
        }


        final capability =
            item.requiredCapability;

        if (capability == null) {
          return true;
        }

        return user.capabilities.contains(
          capability,
        );
      },
    ).toList();
  }
}
