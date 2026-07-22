import '../domain/entities/service_completion.dart';

class MockServiceCompletion {
  MockServiceCompletion._();

  static const ServiceCompletion completed =
      ServiceCompletion(
    id: '000124',
    serviceTitle: 'Instalação elétrica',
    provider: 'João Silva',
    checklistCompleted: true,
    qualityScore: 0.95,
    bonusHourGenerated: 5,
    reputationIncrease: 0.02,
  );
}
