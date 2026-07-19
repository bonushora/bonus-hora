import '../domain/entities/opportunity.dart';

class MockOpportunities {
  MockOpportunities._();

  static const List<Opportunity> items = [
    Opportunity(
      title: 'Instalação elétrica',
      category: 'Reparos',
      provider: 'João Silva',
      location: 'Pituba',
      description:
          'Instalação de tomada residencial e revisão básica de fiação.',
      rating: 4.9,
      reward: 3,
      deadline: 'Hoje',
    ),

    Opportunity(
      title: 'Aula de matemática',
      category: 'Educação',
      provider: 'Maria Souza',
      location: 'Brotas',
      description:
          'Acompanhamento escolar para ensino fundamental.',
      rating: 5.0,
      reward: 5,
      deadline: 'Amanhã',
    ),
  ];
}
