import 'package:equatable/equatable.dart';

class Opportunity extends Equatable {
  final String title;
  final String category;
  final String provider;
  final String location;
  final String description;
  final double rating;
  final int reward;
  final String deadline;

  const Opportunity({
    required this.title,
    required this.category,
    required this.provider,
    required this.location,
    required this.description,
    required this.rating,
    required this.reward,
    required this.deadline,
  });

  @override
  List<Object?> get props => [
        title,
        category,
        provider,
        location,
        description,
        rating,
        reward,
        deadline,
      ];
}
