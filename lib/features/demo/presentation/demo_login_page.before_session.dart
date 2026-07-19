import 'package:flutter/material.dart';

import '../domain/demo_profile.dart';

class DemoLoginPage extends StatelessWidget {
  const DemoLoginPage({
    super.key,
  });

  void _selectProfile(
    BuildContext context,
    DemoProfile profile,
  ) {
    debugPrint(
      'Perfil selecionado: ${profile.name}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Modo Demonstração',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch,

          children: [

            const SizedBox(
              height: 40,
            ),

            const Text(
              'Escolha o perfil',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 40,
            ),

            FilledButton(
              onPressed: () {
                _selectProfile(
                  context,
                  DemoProfile.client,
                );
              },
              child: const Text(
                'Cliente',
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            FilledButton(
              onPressed: () {
                _selectProfile(
                  context,
                  DemoProfile.provider,
                );
              },
              child: const Text(
                'Prestador',
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            FilledButton(
              onPressed: () {
                _selectProfile(
                  context,
                  DemoProfile.clientProvider,
                );
              },
              child: const Text(
                'Cliente + Prestador',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
