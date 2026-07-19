import 'package:equatable/equatable.dart';

import 'checklist_item.dart';

class Checklist extends Equatable {
  final String id;
  final String serviceId;
  final List<ChecklistItem> items;

  const Checklist({
    required this.id,
    required this.serviceId,
    required this.items,
  });

  double get weightedScore {
    double totalWeight = 0;
    double totalScore = 0;

    for (final item in items) {
      totalWeight += item.weight;
      totalScore += item.score * item.weight;
    }

    if (totalWeight == 0) {
      return 0;
    }

    return totalScore / totalWeight;
  }

  @override
  List<Object?> get props => [
        id,
        serviceId,
        items,
      ];
}
