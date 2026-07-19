import 'package:equatable/equatable.dart';

class ServiceEvaluation extends Equatable {
  final String id;
  final String serviceId;
  final double qualityScore;
  final bool approved;
  final int bonusHourGenerated;
  final double reputationIncrease;

  const ServiceEvaluation({
    required this.id,
    required this.serviceId,
    required this.qualityScore,
    required this.approved,
    required this.bonusHourGenerated,
    required this.reputationIncrease,
  });

  @override
  List<Object?> get props => [
        id,
        serviceId,
        qualityScore,
        approved,
        bonusHourGenerated,
        reputationIncrease,
      ];
}
