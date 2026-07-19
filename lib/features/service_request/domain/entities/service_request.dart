import 'package:equatable/equatable.dart';

enum ServiceRequestStatus {
  pending,
  accepted,
  completed,
  cancelled,
}

class ServiceRequest extends Equatable {
  final String id;
  final String opportunityTitle;
  final String provider;
  final String clientMessage;
  final int reward;
  final ServiceRequestStatus status;

  const ServiceRequest({
    required this.id,
    required this.opportunityTitle,
    required this.provider,
    required this.clientMessage,
    required this.reward,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        opportunityTitle,
        provider,
        clientMessage,
        reward,
        status,
      ];
}
