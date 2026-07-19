import 'package:equatable/equatable.dart';

class ServiceCompletion extends Equatable {
  final String id;
  final String serviceTitle;
  final String provider;
  final bool checklistCompleted;
  final double qualityScore;
  final int bonusHourGenerated;
  final double reputationIncrease;

  const ServiceCompletion({
    required this.id,
    required this.serviceTitle,
    required this.provider,
    required this.checklistCompleted,
    required this.qualityScore,
    required this.bonusHourGenerated,
    required this.reputationIncrease,
  });

  @override
  List<Object?> get props => [
        id,
        serviceTitle,
        provider,
        checklistCompleted,
        qualityScore,
        bonusHourGenerated,
        reputationIncrease,
      ];
}
