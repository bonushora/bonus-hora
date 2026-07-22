import '../domain/entities/service_request.dart';

class MockServiceRequest {
  MockServiceRequest._();

  static const ServiceRequest current =
      ServiceRequest(
    id: 'SR-000124',
    opportunityTitle: 'Instalação elétrica',
    provider: 'João Silva',
    clientMessage:
        'Preciso revisar uma tomada residencial e verificar a fiação.',
    reward: 3,
    status: ServiceRequestStatus.accepted,
  );
}
