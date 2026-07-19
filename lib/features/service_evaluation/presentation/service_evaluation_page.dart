import 'package:flutter/material.dart';

class ServiceEvaluationPage extends StatelessWidget {
  const ServiceEvaluationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Central da Verdade',
        ),
      ),
      body: const Center(
        child: Text(
          'Avaliação do serviço',
        ),
      ),
    );
  }
}
