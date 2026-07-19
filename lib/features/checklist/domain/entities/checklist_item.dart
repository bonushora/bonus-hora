import 'package:equatable/equatable.dart';

class ChecklistItem extends Equatable {
  final String id;
  final String description;
  final double weight;
  final double score;
  final bool completed;

  const ChecklistItem({
    required this.id,
    required this.description,
    required this.weight,
    required this.score,
    required this.completed,
  });

  @override
  List<Object?> get props => [
        id,
        description,
        weight,
        score,
        completed,
      ];
}
